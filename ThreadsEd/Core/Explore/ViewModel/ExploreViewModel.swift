//
//  ExploreViewModel.swift
//  ThreadsEd
//
//  Created by vbugrym on 23.02.2024.
//

import Combine

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
