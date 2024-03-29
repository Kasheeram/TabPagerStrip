//
//  ChildViewController1.swift
//  TabPagerStrip
//
//  Created by kashee on 23/12/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ChildViewController1: UIViewController, IndicatorInfoProvider {
   
    let childLabel:UILabel = {
        let lable = UILabel()
        lable.text = "child1 viewcontroller"
        lable.textAlignment = .center
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(childLabel)
//        childLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        childLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        childLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        childLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        childLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:30).isActive = true
        childLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        childLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        childLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant:-20).isActive = true
        childLabel.backgroundColor = .purple
//        view.backgroundColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Child1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    
}
