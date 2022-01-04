//
//  ViewController.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 24/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    
// MARK: - Ciclo de vida
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
