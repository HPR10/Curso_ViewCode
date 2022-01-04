//
//  LoginScreen.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 24/12/21.
//

import UIKit

class LoginScreen: UIView {

// MARK: - Elementos de interface
    
    lazy var lblLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "1")
        logo.tintColor = .green
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
// MARK: - Método Construtor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.lblLogin)
        self.addSubview(self.logoAppImageView)
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

// MARK: - Definindo constrants
    
    // equalTo: basear em determinado elemento
    // Constant: Aproximar/afastar do elemento referente(equalTo)
    // equalToConstant: setar um valor fixo para determinado elemento.
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            self.lblLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.lblLogin.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.logoAppImageView.topAnchor.constraint(equalTo: lblLogin.bottomAnchor, constant: 20),
            
            self.logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 200)
            
            
            
        ])
    }
    
}
