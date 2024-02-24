//
//  AuthService.swift
//  ThreadsEd
//
//  Created by vbugrym on 04.01.2024.
//

import Firebase
import FirebaseFirestore

typealias onSuccess = () -> Void

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static var shared = AuthService()
    
    private init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(_ user: UserModel) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: user.email, password: user.password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("Failed: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(_ user: UserModel) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: user.email, password: user.password)
            self.userSession = result.user
            let user = User(id: result.user.uid,
                            userName: user.userName,
                            fullName: user.fullName,
                            email: user.email)
            try await uploadUserData(user)
            print(result.user.uid)
        } catch {
            print("Failed: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        // Signs out on BE side
        try? Auth.auth().signOut()
        
        // Signs out locally 
        self.userSession = nil
        
        UserService.shared.reset()
    }
    
    @MainActor
    private func uploadUserData(_ user: User)  async throws{
        guard let userData = try? Firestore.Encoder().encode(user) else {
            return
        }
        
        try await Firestore.firestore().collection("users").document(user.id).setData(userData)
        
        UserService.shared.currentUser = user
    }
}
