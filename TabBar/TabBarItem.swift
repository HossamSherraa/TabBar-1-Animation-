//
//  TabBarItem.swift
//  TabBar
//
//  Created by Hossam on 5/1/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit
class TabBarItem : UIView {
    let containerView = UIView()
    let image = UIImageView()
    let title = UILabel()
    var containerWidthConstrain : NSLayoutConstraint!
    var titleLeadingConstrain : NSLayoutConstraint!
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    func config(){
        //First Steps
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.image.translatesAutoresizingMaskIntoConstraints = false
        self.title.translatesAutoresizingMaskIntoConstraints = false
        self.image.contentMode = .scaleAspectFit
        self.title.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        addSubview(containerView)
        containerView.addSubview(image)
        containerView.addSubview(title)
        
        //Visual Layers
        
        containerView.clipsToBounds = true
        
        //Constrains
        self.containerWidthConstrain = self.containerView.widthAnchor.constraint(equalTo: self.widthAnchor)
        self.titleLeadingConstrain = self.title.leadingAnchor.constraint(equalTo: self.image.trailingAnchor , constant:  10)
        
        
        NSLayoutConstraint.activate([self.containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        self.containerView.topAnchor.constraint(equalTo: self.topAnchor),
        containerWidthConstrain,
        self.containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
            self.image.leadingAnchor.constraint(equalTo: self.leadingAnchor , constant: 5) ,
            self.image.topAnchor.constraint(equalTo: self.topAnchor),
            self.image.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.title.topAnchor.constraint(equalTo: self.topAnchor) ,
            self.title.bottomAnchor.constraint(equalTo: self.bottomAnchor) ,
            self.titleLeadingConstrain
        ])
        
        animate(setSelected: false )
        
        
    }
    
    
    func animate(setSelected : Bool) {
        if setSelected {
            
            self.containerWidthConstrain.constant =   self.title.frame.width   - (self.frame.width + 7.5)
                   self.titleLeadingConstrain.constant = 0
                   UIView.animate(withDuration: 0.2, animations: { [weak self ] in
                    guard let  self = self else {return}
                       self.title.alpha = 0
                    self.containerView.layer.cornerRadius = 10
                       self.layoutIfNeeded()
                   })
        }else {
            self.containerWidthConstrain.constant = 0
                   self.titleLeadingConstrain.constant = 10
                   UIView.animate(withDuration: 0.2, animations: {
                       self.title.alpha = 1
                    self.containerView.layer.cornerRadius = 20
                       self.layoutIfNeeded()
                   })
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
