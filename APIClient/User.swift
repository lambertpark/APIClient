//
//  User.swift
//  APIClient
//
//  Created by Lambert Park on 2022/01/20.
//

import Foundation

struct User: Codable {
    
    let name: String
    let email: String
    let password: String
    let notifications: Bool

}
