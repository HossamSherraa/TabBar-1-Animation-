//
//  ViewController.swift
//  TabBar
//
//  Created by Hossam on 4/30/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let testView = TabBarItem(frame: .init(x: 120, y: 120, width: 80, height: 40))
    override func viewDidLoad() {
        self.view.backgroundColor = .white
       
        
        testView.title.text = "Home"
        testView.image.image = UIImage(named: "clock")
        testView.containerView.backgroundColor = #colorLiteral(red: 0.8897159696, green: 0.9072414041, blue: 0.4082275033, alpha: 1)
        self.view.addSubview(testView)
        
        let button = UIButton(frame: .init(x: 120, y: 50, width: 40, height: 40))
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(self.mainButton), for: .touchUpInside)
        
    
    
    
    }
    var booll = true
    
    @objc func mainButton(){
        testView.animate(setSelected: booll )
        booll.toggle()
       
    
        
    }
}

