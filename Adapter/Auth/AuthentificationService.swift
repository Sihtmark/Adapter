//
//  AuthentificationService.swift
//  Adapter
//
//  Created by Sergei Poluboiarinov on 2022-11-25.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthentificationService {
    func login(
        email: String,
        password: String,
        sucess: @escaping (User, Token) -> Void,
        failure: @escaping (Error?) -> Void)
}
