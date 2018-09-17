//
//  UIButtonCommanClasses.swift
//  OrangeWill
//
//  Created by MCA 2 on 30/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit

class UIButtonCommanClasses: NSObject {

}
//MARK: BUTTON WIRH ALL BORDER
class buttonWithAllBorder: UIButton {
    override func draw(_ rect: CGRect) {
        self.layer.borderWidth = 0.7
        self.layer.borderColor = UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.2).cgColor
        self.layer.cornerRadius = 3.0
        self.layer.masksToBounds = true
        
    }
}
class BtnOrangeBorder: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.borderColor = UIColor().basicOrangeColor().cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
}
class btnQtyBorder: UIButton {
    override func draw(_ rect: CGRect) {
        self.layer.borderColor = UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.2).cgColor
        self.layer.borderWidth = 0.8
        self.layer.cornerRadius = self.frame.size.height/2.0
        self.clipsToBounds = true
    }
}

class BtnInfoWhiteBorder: UIButton {
    override func draw(_ rect: CGRect) {
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 0.8
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
}
//MARK:- FILTER BUTTON BACKGROUND
class filterBtnBackground : UIButton{
    static let sharedObject = filterBtnBackground()
    func btnSelected(btn:UIButton) {
        btn.layer.borderColor = UIColor().basicOrangeColor().cgColor
        btn.layer.borderWidth = 1.0
        btn.layer.cornerRadius = 5.0
        btn.layer.masksToBounds = true
        btn.backgroundColor = UIColor().basicOrangeColor()
        btn.setTitleColor(.white, for: .normal)
    }
    func btnUnselected(btn:UIButton) {
        btn.layer.borderWidth = 1.0
        btn.layer.cornerRadius = 5.0
        btn.layer.borderColor = UIColor(red:0.45, green:0.45, blue:0.41, alpha:1.0).cgColor
        btn.backgroundColor = UIColor.white
        btn.layer.masksToBounds = true
        btn.setTitleColor(UIColor.darkGray, for: .normal)
    }
}
//MARK:- BUTTON RIGHT BORDER
class buttonRightBorder: UIButton {
    override func draw(_ rect: CGRect) {
        let border = CALayer()
        border.backgroundColor = UIColor(red:0.59, green:0.59, blue:0.59, alpha:0.2).cgColor
        border.frame = CGRect(x: self.frame.size.width - 1, y: 10.0, width: 1.0, height: self.frame.size.height-20)
        self.layer.addSublayer(border)
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
    }
}
