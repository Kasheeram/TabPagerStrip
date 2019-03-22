//
//  ParentViewController.swift
//  TabPagerStrip
//
//  Created by kashee on 23/12/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ParentViewController: ButtonBarPagerTabStripViewController {

    let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)
   
    override func viewDidLoad() {
        
        // change selected bar color
        settings.style.selectedBarBackgroundColor = .black
        settings.style.buttonBarBackgroundColor = UIColor(red: 222/255, green: 65/255, blue: 27/255, alpha: 1.0)
        settings.style.buttonBarItemBackgroundColor = UIColor(red: 222/255, green: 65/255, blue: 27/255, alpha: 1.0)
            
        settings.style.selectedBarBackgroundColor = .white
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 10
        settings.style.buttonBarRightContentInset = 10
//        settings.style.button
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .white
            newCell?.label.textColor = .white
        }
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }

    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = ChildViewController1()
        let child_2 = ChildViewController2()
        return [child_1, child_2]
    }
    
}
