//
//  RegistrationViewModel.swift
//  ThreadsEd
//
//  Created by vbugrym on 04.01.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var user = UserModel()
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(user)
    }
}
