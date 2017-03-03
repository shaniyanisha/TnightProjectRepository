
//  MainVC.swift
//  TnightProject
//
//  Copyright © 2017 appinventiv. All rights reserved.


import UIKit

class MainVC: UIViewController {

    //MARK: IBOUTLETS

    @IBOutlet weak var screenScrollView: UIScrollView!
    
    @IBOutlet weak var tonightImageView: UIImageView!
    
    @IBOutlet weak var signInButton: UIButton!
        
    @IBOutlet weak var signUpButton: UIButton!
        
    @IBOutlet weak var lineScrollBar: UIView!
   
    @IBOutlet weak var buttomOfScreenScroll: NSLayoutConstraint!
        
        //MARK: View Life Cycle
           override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view, typically from a nib.
            self.screenScrollView.frame.size = CGSize(width: self.view.frame.width, height: 325)
            
            //adding the singInVC
            let signInController = self.storyboard?.instantiateViewController(withIdentifier: "SignInVCID") as! SignInVC
            self.addChildViewController(signInController)
            self.screenScrollView.addSubview(signInController.view)
            signInController.view.frame = CGRect(x: 0, y: 0, width: self.screenScrollView.frame.width, height: self.screenScrollView.frame.height)
            
            
            //adding the singUpVC
            let signUpController = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVCID") as! SignUpVC
            signUpController.view.frame = CGRect(x: self.screenScrollView.frame.width, y: 0, width: self.screenScrollView.frame.width, height: self.screenScrollView.frame.height)
            self.addChildViewController(signUpController)
            self.screenScrollView.addSubview(signUpController.view)
            
            self.screenScrollView.contentSize = CGSize(width: (self.screenScrollView.frame.width) * 2, height: self.screenScrollView.frame.height)
            
            //delegate for scroll view
            self.screenScrollView.delegate = self
            
            //adding observer ,generating Notification and calculating height before Keyboard apperas
            NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (Notification) in
                
                guard let userinfo = Notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue
                    else {
                        
                        return
                        
                }
                
                
                
                let keyboardheight = userinfo.cgRectValue.height
                UIView.animate(withDuration: 0.8, animations: {
                    
                self.buttomOfScreenScroll.constant = keyboardheight - 50
                    
                    
                })
                
          }
            
        //adding observer when keyboard disappear
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (Notification) in
                
                
                UIView.animate(withDuration: 0.8, animations: {
                    
                self.buttomOfScreenScroll.constant = 0
                    
                })
                
       }
            
    }
            

     //IBAction for signInButtonTapped
     @IBAction func signInButtonTapped(_ sender: UIButton) {
            
            let signInController = self.storyboard?.instantiateViewController(withIdentifier: "SignInVCID") as! SignInVC
            
            signInController.view.frame = self.screenScrollView.bounds
            self.addChildViewController(signInController)
            
            self.screenScrollView.addSubview(signInController.view)
            signInController.didMove(toParentViewController: self)
     }
        
    //IBAction for signUpButtonTapped
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
            
            let signUpController = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVCID") as! SignUpVC
            signUpController.view.frame = self.screenScrollView.bounds
            self.addChildViewController(signUpController)
            self.screenScrollView.addSubview(signUpController.view)
            signUpController.didMove(toParentViewController: self)
            
     }
    
}


//Marks: extension of MainVC
extension MainVC : UIScrollViewDelegate {
    
    //Function to Scroll
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        
            let multiplier = self.screenScrollView.frame.width/self.lineScrollBar.frame.width
            let scrollPoint = scrollView.contentOffset.x
            self.lineScrollBar.transform = CGAffineTransform(translationX: scrollPoint/multiplier, y: 0)
        
    }
    
}
