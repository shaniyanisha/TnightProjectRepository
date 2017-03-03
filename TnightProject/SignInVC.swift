//
//  SignInVC.swift
//  TnightProject
//  Copyright © 2017 appinventiv. All rights reserved.


import UIKit

class SignInVC: UIViewController {

    
    @IBOutlet weak var showPassword: UIButton!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func loginButton(_ sender: Any) {
        
    }
    
        
    @IBAction func showPasswordButton(_ sender: Any) {
        
        if showPassword.isSelected{
            
            passwordTextField.isSecureTextEntry = true
            showPassword.isSelected = false
            
            
        }
        else{
            
            passwordTextField.isSecureTextEntry = false
            showPassword.isSelected = true

        }
        

    }

}

