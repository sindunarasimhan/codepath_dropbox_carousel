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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width:375, height:830)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onSignOutButtonPressed(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let introVC = mainStoryboard.instantiateViewController(withIdentifier: "introVC") as! MainViewController
        present(introVC, animated: true, completion: nil)

    }
    
    @IBAction func oncloseButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: false, completion: nil)

    }
    

}
