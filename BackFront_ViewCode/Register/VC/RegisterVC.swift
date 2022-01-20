//
//  RegisterVC.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 19/01/22.
//

import UIKit

class RegisterVC: UIViewController {
    
// Setando qual tela a controller vai carregar 
    var registerScreen: RegisterScreen?
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
