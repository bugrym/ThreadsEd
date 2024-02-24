//
//  Current.swift
//  ThreadsEd
//
//  Created by vbugrym on 23.02.2024.
//

import Foundation

final class Current {
    
    static var current = Current()
    
    private init() { }
    
    var user: User {
        return User(id: UUID().uuidString,
                    userName: "mikemijlah",
                    fullName: "Mike Mijlah",
                    email: "mikem@gmail.com")
    }
}
