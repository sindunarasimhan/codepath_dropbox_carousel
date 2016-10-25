//
//  ConversationViewController.swift
//  dropbox-carousel-assignment
//
//  Created by Narasimhan, Sindhuja on 10/24/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackPressed(_ sender: UIButton) {
       // self.dismiss(animated: true, completion: nil);
        //self.performSegue(withIdentifier: "carSegue", sender: self)

        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let carVC = mainStoryboard.instantiateViewController(withIdentifier: "carousalVC") as! CarouselViewController
        present(carVC, animated: false, completion: nil)
    }

}
