//
//  UserModel.swift
//  ThreadsEd
//
//  Created by vbugrym on 28.01.2024.
//

import Foundation

struct UserModel: Identifiable, Codable {
    var userName: String = ""
    var fullName: String = ""
    var email: String = ""
    var password: String = ""
    var id: String?
}

struct User: Identifiable, Codable, Hashable {
    let id: String
    let userName: String
    let fullName: String
    let email: String
    
    var profileImageURL: String?
    var bio: String?
}
