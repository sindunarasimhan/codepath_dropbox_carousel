//
//  SettingsViewController.swift
//  dropbox-carousel-assignment
//
//  Created by Narasimhan, Sindhuja on 10/24/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    
    let alertController = UIAlertController(title:nil, message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
    
    let logoutAction = UIAlertAction(title: "Log Out", style: .destructive) { (action) in
        let introVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "introVC") as UIViewController
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        appDelegate.window?.rootViewController = introVC
        let initialViewController = UIStoryboard(name: "Main", bundle:nil).instantiateInitialViewController()! as UIViewController
        let appDelegated = (UIApplication.shared.delegate as! AppDelegate)
        appDelegated.window?.rootViewController = initialViewController
    }
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        // handle case of user canceling. Doing nothing will dismiss the view.
    }

    override func viewDidAppear(_ _animated: Bool) {
        super.viewDidAppear(true)
        scrollView.contentSize = CGSize(width:375, height:830)
        alertController.addAction(logoutAction)
        alertController.addAction(cancelAction)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onSignOutPressed(_ sender: UIButton) {
        present(alertController, animated: true) {


        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func oncloseButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: false, completion: nil)

    }
    

}
