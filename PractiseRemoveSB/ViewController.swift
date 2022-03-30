//
//  ViewController.swift
//  PractiseRemoveSB
//
//  Created by Natia's Mac on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var logInbtn: UIButton!
    var usertxtField: UITextField!
    var passwordtxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
  
        
        logInbtn = UIButton(type: .system)
        logInbtn.setTitle("LogIn", for: .normal)
        logInbtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logInbtn)
        logInbtn.addTarget(self, action: #selector(handleLoginTouchUpInside), for: .touchUpInside)
        
        usertxtField = UITextField(frame: .zero)
        usertxtField.placeholder = "Username"
        usertxtField.borderStyle = .roundedRect
        usertxtField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usertxtField)
        
        passwordtxtField = UITextField(frame: .zero)
        passwordtxtField.placeholder = "Enter Password"
        passwordtxtField.isSecureTextEntry = true
        passwordtxtField.borderStyle = .roundedRect
        passwordtxtField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordtxtField)
        contraintsInit()
    }
    func contraintsInit(){
        NSLayoutConstraint.activate([logInbtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     logInbtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        passwordtxtField.bottomAnchor.constraint(equalTo: logInbtn.topAnchor, constant: -20),
        passwordtxtField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor,  constant: 20),
        passwordtxtField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant:  -20),
        
        usertxtField.bottomAnchor.constraint(equalTo: passwordtxtField.topAnchor, constant: -20),
        usertxtField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
        usertxtField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
                                    ])
        }

    @objc func handleLoginTouchUpInside(){
        print("tapped")
        if usertxtField.isFirstResponder{
            usertxtField.resignFirstResponder()
        }
        if passwordtxtField.isFirstResponder{
            passwordtxtField.resignFirstResponder()
        }
    }
}

