//
//  ProfileViewModel.swift
//  ThreadsEd
//
//  Created by vbugrym on 18.02.2024.
//

import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("User in ViewModel is \(user)")
        }.store(in: &cancellables)
    }
}
