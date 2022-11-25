//
//  GoogleAdapter.swift
//  Adapter
//
//  Created by Sergei Poluboiarinov on 2022-11-25.
//

import Foundation

class GoogleAdapter: AuthentificationService {
    
    private var authenticator = GoogleAuthenticator()
    
    public func login(email: String, password: String, sucess: @escaping (User, Token) -> Void, failure: @escaping (Error?) -> Void) {
        authenticator.login(email: email, password: password) { currentUser, error in
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            sucess(user, token)
        }
    }
    
    
}
