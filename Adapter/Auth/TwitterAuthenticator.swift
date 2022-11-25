//
//  TwitterAuthenticator.swift
//  Adapter
//
//  Created by Sergei Poluboiarinov on 2022-11-25.
//

import Foundation

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuthenticator {
    public func login(
        email: String,
        password: String,
        completion: @escaping (TwitterUser?, Error?) -> Void) {
            
            let token = "special-token-value"
            let user = TwitterUser(email: email, password: password, token: token)
            completion(user, nil)
        }
}
