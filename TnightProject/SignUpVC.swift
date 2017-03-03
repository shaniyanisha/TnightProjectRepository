//
//  SignUpVC.swift
//  TnightProject
//  Copyright © 2017 appinventiv. All rights reserved.

import UIKit

class SignUpVC: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var userPhoneNumber: UITextField!
    
    
    @IBOutlet weak var LogInButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//     
//        if (userName.text?.isEmpty)!{
//            
//            // Create the alert controller
//            let alertController = UIAlertController(title: "ALERT", message: "Username is mandatory, please enter the name", preferredStyle: .alert)
//            
//            // Create the actions
//            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
//                UIAlertAction in
//                
//                
//            }
//            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
//                UIAlertAction in
//                
//                
//            }
//            
//            // Add the actions
//            alertController.addAction(okAction)
//            alertController.addAction(cancelAction)
//            
//            // Present the controller
//            self.present(alertController, animated: true, completion: nil)
//            
//        }
//        else {
//            
//            if (userEmail.text?.isEmpty)!{
//                
//                // Create the alert controller
//                let alertController = UIAlertController(title: "ALERT", message: "Username is mandatory, please enter the name", preferredStyle: .alert)
//                
//                // Create the actions
//                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
//                    UIAlertAction in
//                    
//                    
//                }
//                let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
//                    UIAlertAction in
//                    
//                    
//                }
//                
//                // Add the actions
//                alertController.addAction(okAction)
//                alertController.addAction(cancelAction)
//                
//                // Present the controller
//                self.present(alertController, animated: true, completion: nil)
//                
//                
//                
//             }
//            
//            
//         }
//        
//       
//
//        
//        
//}

    @IBAction func signUpButton(_ sender: Any) {
        
        
}
}
