//
//  ViewController.swift
//  UITextField
//
//  Created by Ediz Özdil on 4.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didTapLoginButton (_ sender: UIButton)
    {
        print("Username: \(String(describing: usernameTextField.text))")
        print("Username: \(passwordTextField.text ?? "Şifre girilmedi")")
    }
    

}

