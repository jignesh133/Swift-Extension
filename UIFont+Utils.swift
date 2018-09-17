//
//  UIFont+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
extension UIFont{
    
    func avenirBook(mySize:myFontSize) -> UIFont {
        
        switch mySize {
        case .verysmall:
            return UIFont(name: "Avenir-Book", size: 10)!
        case .small:
            return UIFont(name: "Avenir-Book", size: 12)!
        case .medium:
            return UIFont(name: "Avenir-Book", size: 14)!
        case .standrad:
            return UIFont(name: "Avenir-Book", size: 16)!
        case .big:
            return UIFont(name: "Avenir-Book", size: 17)!
            
        }
        
    }
    func avenirMedium(mySize:myFontSize) -> UIFont {
        
        switch mySize {
        case .verysmall:
            return UIFont(name: "Avenir-Medium", size: 10)!
        case .small:
            return UIFont(name: "Avenir-Medium", size: 12)!
        case .medium:
            return UIFont(name: "Avenir-Medium", size: 14)!
        case .standrad:
            return UIFont(name: "Avenir-Medium", size: 16)!
        case .big:
            return UIFont(name: "Avenir-Medium", size: 17)!
            
        }
        
    }
    
}

class UIFont_Utils: NSObject {

}
