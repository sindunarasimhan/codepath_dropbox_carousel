//
//  LoginViewController.swift
//  dropbox-carousel-assignment
//
//  Created by Narasimhan, Sindhuja on 10/24/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var activitySpinner: UIActivityIndicatorView!

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!

    let emailAlertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .alert)
    
    let incorrectController = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid Email and Password", preferredStyle: .alert)
    let signInController = UIAlertController(title:nil, message: "Signing In...", preferredStyle: .alert)
    
    let passwordAlertController = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .alert)
    
    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        // handle response here.
    }
    // add the OK action to the alert controller
    

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = scrollView.frame.size
        scrollView.delegate = self

        scrollView.contentInset.bottom = 100
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        emailAlertController.addAction(OKAction)
        incorrectController.addAction(OKAction)
        passwordAlertController.addAction(OKAction)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification) {
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        scrollView.contentOffset.y = scrollView.contentInset.bottom
    }
    
    @IBAction func onLoginPressed(_ sender: UIButton) {
        activitySpinner.startAnimating()
        if (emailField.text?.isEmpty)!{
            activitySpinner.stopAnimating()
            present(emailAlertController, animated: true) {
            }
        }
        else if emailField.text == "sindu.ux@gmail.com" && passwordField.text == "password" {
            present(signInController, animated: true) {
            }
            delay(3, closure: { () -> () in
                self.signInController.dismiss(animated:false, completion: {
                    }
                )
                self.activitySpinner.stopAnimating()
                self.performSegue(withIdentifier: "pagingSegue", sender: nil)

            })
        } else {
            activitySpinner.stopAnimating()
            present(incorrectController, animated: true) {
            }
        }
    }
    
    @IBAction func onBackPressed(_ sender: UIButton) {
        
    }
    
        

    


}
