//
//  RegisterScreen.swift
//  BackFront_ViewCode
//
//  Created by Hugo Pinheiro on 19/01/22.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "logo")
        logo.contentMode =  .scaleAspectFill
        return logo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.configSuperView()
        self.setUpConstranints()    }
    
    private func configSuperView() {
        self.addSubview(self.logoImage)
        
    }
    
    private func configBackground() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpConstranints() {
        NSLayoutConstraint.activate([
            
            self.logoImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImage.widthAnchor.constraint(equalToConstant: 150),
            self.logoImage.heightAnchor.constraint(equalToConstant: 150)
        
        
        
        ])
    }
}
