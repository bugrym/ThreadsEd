//
//  LoginViewModel.swift
//  ThreadsEd
//
//  Created by vbugrym on 28.01.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var user = UserModel()
    @Published var isLoading = false
    
    @MainActor
    func loginUser() async throws {
        try await AuthService.shared.login(user)
    }
    
    var isLoginDisabled: Bool {
        return user.email.isEmpty && user.password.isEmpty
    }
}

