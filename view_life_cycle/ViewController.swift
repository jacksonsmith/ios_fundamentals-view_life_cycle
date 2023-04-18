//
//  ViewController.swift
//  view_life_cycle
//
//  Created by Jackson on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - UI Elements
      
      let logoImageView: UIImageView = {
          let imageView = UIImageView()
          imageView.image = UIImage(named: "logo")
          imageView.contentMode = .scaleAspectFit
          imageView.translatesAutoresizingMaskIntoConstraints = false
          return imageView
      }()
      
      let usernameTextField: UITextField = {
          let textField = UITextField()
          textField.placeholder = "Nome"
          textField.borderStyle = .roundedRect
          textField.translatesAutoresizingMaskIntoConstraints = false
          return textField
      }()
      
      let passwordTextField: UITextField = {
          let textField = UITextField()
          textField.placeholder = "Senha"
          textField.borderStyle = .roundedRect
          textField.translatesAutoresizingMaskIntoConstraints = false
          return textField
      }()
      
      let loginButton: UIButton = {
          let button = UIButton(type: .system)
          button.setTitle("Login", for: .normal)
          button.setTitleColor(.white, for: .normal)
          button.backgroundColor = .blue
          button.layer.cornerRadius = 5
          button.translatesAutoresizingMaskIntoConstraints = false
          button.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
          return button
      }()
    
    
    @objc func didTapLogin() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        
        self.present(secondViewController, animated: true)
    }
      
      //MARK: - View Lifecycle
      
      override func viewDidLoad() {
          print("View Did Load")
          super.viewDidLoad()
          
          view.backgroundColor = .white
          
          view.addSubview(logoImageView)
          view.addSubview(usernameTextField)
          view.addSubview(passwordTextField)
          view.addSubview(loginButton)
          
          setupConstraints()
      }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear")
    }
    
    
      
      //MARK: - Constraints
      
      func setupConstraints() {
          
          NSLayoutConstraint.activate([
              
              logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
              logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              logoImageView.widthAnchor.constraint(equalToConstant: 150),
              logoImageView.heightAnchor.constraint(equalToConstant: 150),
              
              usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
              usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
              usernameTextField.heightAnchor.constraint(equalToConstant: 50),
              
              passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
              passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
              passwordTextField.heightAnchor.constraint(equalToConstant: 50),
              
              loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
              loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
              loginButton.heightAnchor.constraint(equalToConstant: 50)
          ])
      }
}

