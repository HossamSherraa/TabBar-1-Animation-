//
//  TabBar.swift
//  TabBar
//
//  Created by Hossam on 4/30/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit
class TabBar : UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        let vc1 = ViewController()
        vc1.view.backgroundColor = .white
        
        let vc2 = ViewController()
               vc2.view.backgroundColor = .yellow
        
        
        let vc3 = ViewController()
        vc3.view.backgroundColor = .green
        
        
        let vc4 = ViewController()
               vc4.view.backgroundColor = .blue
        
        
        self.viewControllers = [vc1 , vc2 , vc3 , vc4 ]
        
        self.tabBar.barStyle = .black
        self.tabBar.tintColor = .green
        self.tabBar.itemSpacing = 60
       
        self.tabBar.isTranslucent = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
