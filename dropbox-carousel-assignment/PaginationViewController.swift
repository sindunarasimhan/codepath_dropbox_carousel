//
//  PaginationViewController.swift
//  dropbox-carousel-assignment
//
//  Created by Narasimhan, Sindhuja on 10/24/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class PaginationViewController: UIViewController,UIScrollViewDelegate{
    
    @IBOutlet weak var button: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 1510, height: 580)
        scrollView.delegate = self
        pageControl.numberOfPages = 4        
        button.alpha = 0

    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
 
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        if page == 4 {
            UIView.animate(withDuration: 0.3) { () -> Void in
                self.pageControl.isHidden = true
                self.button.alpha = 1
            }

        } else {
            UIView.animate(withDuration: 0.3) { () -> Void in
                self.pageControl.isHidden = false
                self.button.alpha = 0
            }
            
        }
        
    }
    
    @IBAction func onBackUpActionPressed(_ sender: UIButton) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}



    
