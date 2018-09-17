//
//  UIColor+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit

extension UIColor{
    
    func basicOrangeColor() -> UIColor{
        
        return UIColor(red:1.00, green:0.41, blue:0.00, alpha:1.0)
    }
    
    func titleColor() -> UIColor{
        return UIColor(red:0.29, green:0.29, blue:0.26, alpha:1.0)
    }
    
    func subTitleColor() -> UIColor{
        return UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.8)
    }
    
    func tableCellSelectedColor() -> UIColor {
        return UIColor(red:1.00, green:0.41, blue:0.00, alpha:0.05)
    }
    func ColorForSelectedOrder() -> UIColor{
        return UIColor(red:0.29, green:0.29, blue:0.26, alpha:0.05)
    }
    
    func textGreen() -> UIColor {
        return UIColor(red:0.20, green:0.80, blue:0.20, alpha:1.0)
    }
    func lightGreenColor() -> UIColor {
        return UIColor(red:0.75, green:0.93, blue:0.71, alpha:0.6)
    }
}

class UIColor_Utils: NSObject {

}
