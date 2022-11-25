//
//  ViewController.swift
//  Adapter
//
//  Created by Sergei Poluboiarinov on 2022-11-25.
//

import UIKit

class ViewController: UIViewController {
    
    var authService: AuthentificationService = GoogleAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        createUser(email: "user@icloud.com", password: "12345Aa$")
    }
    
    func createUser(email: String, password: String) {
        authService.login(email: email, password: password) { user, token in
            print("Auth succeeded \(user.email), \(token.value)")
        } failure: { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }

    }
}

