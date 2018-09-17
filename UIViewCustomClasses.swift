//
//  UIViewCommanClasses.swift
//  OrangeWill
//
//  Created by MCA 2 on 30/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit

class UIViewCommanClasses: NSObject {

}
//MARK:- VIEWBOTTOMLINE
class viewbottomLine: UIView {
    override func draw(_ rect: CGRect) {
        let border = CALayer()
        border.backgroundColor = UIColor.groupTableViewBackground.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
//MARK:- VIEWWITHLINE
class viewWithLine: UIView {
    override func draw(_ rect: CGRect) {
        let border = CALayer()
        border.backgroundColor = UIColor.groupTableViewBackground.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        
        let border2 = CALayer()
        border2.backgroundColor = UIColor.groupTableViewBackground.cgColor
        border2.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: 1)
        
        self.layer.addSublayer(border2)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}

//MARK:- VIEW WITH ALL BORDER
class viewWithAllBorder: UIView {
    
    override func draw(_ rect: CGRect) {
        let border = CALayer()
        border.backgroundColor = UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.2).cgColor
        border.frame = CGRect(x: 0, y: 0, width: 0.7, height: self.frame.size.height)
        
        let border2 = CALayer()
        border2.backgroundColor = UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.2).cgColor
        border2.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: 0.7)
        
        let border3 = CALayer()
        border3.backgroundColor = UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.2).cgColor
        border3.frame = CGRect(x: 0.0, y: self.frame.size.height - 0.5, width: self.frame.size.width, height: 0.7)
        
        self.layer.addSublayer(border)
        self.layer.addSublayer(border2)
        self.layer.addSublayer(border3)
    }
    
}
