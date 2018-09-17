//
//  UITextField+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
//MARK:- ADDING ASTRIC SIGN
extension UITextField{
    
    func addRequiredSymbol(){
        let myPrefixCharacter = "*"
        let myPrefixColor = UIColor.red
        let attr = [ NSForegroundColorAttributeName: myPrefixColor ]
        let myNewLabelText = NSAttributedString(string: myPrefixCharacter, attributes: attr)
        let myOrigLabelText = NSMutableAttributedString(string: self.placeholder ?? "" + " " )
        myOrigLabelText.append(myNewLabelText)
        self.attributedPlaceholder = myOrigLabelText
    }
    
    enum ViewSide {
        case left, right, top, bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        switch side {
        case .left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height)
        case .right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height)
        case .top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness)
        case .bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness)
        }
        
        layer.addSublayer(border)
    }
    
    
}

class UITextField_Utils: NSObject {

}


