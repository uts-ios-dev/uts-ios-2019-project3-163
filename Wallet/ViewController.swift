//
//  ViewController.swift
//  Wallet
//
//  Created by administrator on 6/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class ViewController: UIViewController,GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        CryptoCurrencyKit.fetchGlobal(convert: .cny) { response in
            switch response {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    

    @IBAction func signInButton(_ sender: UIButton) {
    }
    
    
    
    


}

