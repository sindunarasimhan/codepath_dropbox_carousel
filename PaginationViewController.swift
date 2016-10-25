//
//  PaginationViewController.swift
//  dropbox-carousel-assignment
//
//  Created by Narasimhan, Sindhuja on 10/24/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class PaginationViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 1500, height: 568)
        scrollView.delegate = self
        pageControl.numberOfPages = 4
        pageControl.currentPageIndicatorTintColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
       
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        

        pageControl.currentPage = page
    }
    

}
