//
//  ViewController.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 24/12/21.
//

import UIKit

class ViewController: UIViewController {

// MARK: - Elementos de interface
    
    lazy var lblLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

// MARK: - Ciclo de vida
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        self.view.addSubview(lblLogin)
        self.setUpConstraints()
    }

// MARK: - Definindo constrants
    private func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            self.lblLogin.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.lblLogin.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }

}

