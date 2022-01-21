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
        self.registerScreen?.delegate(delegate: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
    }
    
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterVC: RegisterScreenProtocol{
    func actionRegisterButton() {
        print("Registrado com sucesso")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
