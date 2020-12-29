//
//  LoginController.swift
//  FireChat
//
//  Created by Сергей Голенко on 29.12.2020.
//

import UIKit

class LoginController : UIViewController {
    
    
    //MARK: - Properties
    private let iconImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "bubble.right")
        iv.tintColor = .white
        return iv
    }()
    
    private let emailContainerView : UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        containerView.setHeight(height: 50)
        
        let iv = UIImageView()
        iv.image = UIImage(systemName: "envelope")
        iv.tintColor = .white
        containerView.addSubview(iv)
        iv.centerY(inView: containerView)
        iv.anchor(left:containerView.leftAnchor,paddingLeft: 8)
        iv.setDimensions(height: 24, width: 24)
        return containerView
    }()
    
    private let passwordContainerView : UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        containerView.setHeight(height: 50)
        let iv = UIImageView()
        iv.image = UIImage(systemName: "lock")
        iv.tintColor = .white
        containerView.addSubview(iv)
        iv.centerY(inView: containerView)
        iv.anchor(left:containerView.leftAnchor,paddingLeft: 8)
        iv.setDimensions(height: 24, width: 24)
        return containerView
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .red
        button.setHeight(height: 50)
        return button
    }()
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        return tf
    }()
    
    
    
    //MARK:- Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    //MARK: - Helpers
    
    func configureUI(){
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .systemPurple
        configureGradientLayer()
        view.addSubview(iconImage)
        let stack = UIStackView(arrangedSubviews: [emailContainerView,passwordContainerView,loginButton])
        stack.axis = .vertical
        stack.spacing = 16
        view.addSubview(stack)
        stack.anchor(top: iconImage.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 32,paddingLeft: 32,paddingRight: 32)
        
        
        //this without extension
        
//        iconImage.translatesAutoresizingMaskIntoConstraints = false
//        iconImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        iconImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
//        iconImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        // This example how better with extension code
        iconImage.centerX2(inView: self.view)
        iconImage.anchor(top:view.safeAreaLayoutGuide.topAnchor,paddingTop: 32,width: 200,height: 200)
    }
    
    func configureGradientLayer(){
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.purple.cgColor,UIColor.systemPink.cgColor]
        gradient.locations = [0,2]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
    
    
}
