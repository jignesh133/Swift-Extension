//
//  UILabelCustomClasses.swift
//  OrangeWill
//
//  Created by MCA 2 on 30/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit

class UILabelCustomClasses: NSObject {

}
//MARK:- CUSTOMBADGE
class customeBadge:UILabel {
    
    let accesoryBadge = UILabel()
    func badge(text:String,x:CGFloat,y:CGFloat) -> UILabel {
        
        accesoryBadge.text = text
        accesoryBadge.textAlignment = NSTextAlignment.center
        accesoryBadge.textColor = UIColor.white
        //        accesoryBadge.font = UIFont(name: "Lato-Regular", size: 2)
        accesoryBadge.font = UIFont.systemFont(ofSize: 13)
        //accesoryBadge.backgroundColor = UIColor(red:1.00, green:0.35, blue:0.00, alpha:1.0)
        accesoryBadge.frame = CGRect(x: x, y: y , width: 17, height: 17)
        accesoryBadge.layer.cornerRadius = accesoryBadge.bounds.size.width/CGFloat(2)
        accesoryBadge.layer.backgroundColor = UIColor().basicOrangeColor().cgColor
        accesoryBadge.layer.masksToBounds = true
        accesoryBadge.layoutSubviews()
        return accesoryBadge
        
    }
    
}
