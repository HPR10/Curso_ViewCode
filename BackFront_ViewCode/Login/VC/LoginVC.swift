//
//  ViewController.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 24/12/21.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    
// MARK: - Ciclo de vida
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configureTextFieldelegate(delegate: self)
    }

}

// Assina o método do clique no retorne do teclado no ios e faz o teclado descer ápos o retorne.
extension LoginVC: UITextFieldDelegate {
    
    // some com o teclado ao clicar em retorne no teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    // sobe o teclado ao clicar em algum delegate.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    // Desce o teclado ao clicar em algum delegate.
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
}


extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
        print("Deu certo login button")
    }
    
    func actionRegisterButton() {
        print("Deu certo Register button")
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

