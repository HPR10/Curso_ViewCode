//
//  LoginScreen.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 24/12/21.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}

class LoginScreen: UIView {
    
 private weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }

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
        logo.image = UIImage(named: "logo")
        logo.tintColor = .green
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no // correção automática no teclado
        email.backgroundColor = .white
        email.borderStyle =  .roundedRect
        email.placeholder = "Digite seu E-mail:"
        email.textColor = .darkGray
        return email
    }()
    
    lazy var passwordkTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no // correção automática no teclado
        password.backgroundColor = .white
        password.borderStyle =  .roundedRect
        password.placeholder = "Digite sua senha:"
        password.textColor = .darkGray
        password.isSecureTextEntry = true
        password.keyboardType = .default
        return password
    }()
    
    lazy var loginButton: UIButton = {
        let login = UIButton()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.setTitle("Login", for: .normal)
        login.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        login.setTitleColor(.white, for: .normal)
        login.clipsToBounds = true
        login.layer.cornerRadius = 7.5
        login.backgroundColor = .darkGray
        login.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return login
    }()
    
    lazy var RegisterButton: UIButton = {
        let register = UIButton()
        register.translatesAutoresizingMaskIntoConstraints = false
        register.setTitle("Esqueceu a senha, clique aqui!", for: .normal)
        register.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        register.setTitleColor(.white, for: .normal)
        register.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside   )
        return register
    }()
    
    
    
    
// MARK: - Método Construtor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupSuperView()
        self.configbackgroundColor()
        self.setUpConstraints()
    }
    
    
    func configbackgroundColor() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    func setupSuperView() {
        self.addSubview(self.lblLogin)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordkTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.RegisterButton)
    }
    
    
    // Delegate para pegar o clique no retorne no textfield que o ponteiro está.
    public func configureTextFieldelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordkTextField.delegate = delegate 
    }
    
    @objc private func tappedLoginButton() {
        delegate?.actionLoginButton()
    }
    
    @objc private func tappedRegisterButton() {
        delegate?.actionRegisterButton()
        
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
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 200),
            
            self.emailTextField.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 30),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            self.passwordkTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            self.passwordkTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordkTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.passwordkTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
        
            self.loginButton.topAnchor.constraint(equalTo: passwordkTextField.bottomAnchor, constant: 25),
            self.loginButton.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
            self.RegisterButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25),
            self.RegisterButton.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.RegisterButton.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.RegisterButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
        
        ])
    }
    
}
