//
//  helper.swift
//  OrangeWill
//
//  Created by Hupp Technologies on 18/01/17.
//  Copyright © 2017 Hupp Technologies. All rights reserved.
//

import Foundation
import UIKit




//MARK:- tabController
class tabController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(red:1.00, green:0.35, blue:0.00, alpha:1.0)
       //self.tabBar.isHidden = false
    }
}
//MARK:- UISearchBar
class customeSearchBar: UISearchBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    private func setup(){
        self.barStyle = .default
        self.layer.borderWidth = 1.0
        self.backgroundColor = UIColor.white
        self.layer.borderColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0).cgColor
        self.barTintColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        self.tintColor = UIColor().basicOrangeColor()
        self.layer.masksToBounds = true
        self.isOpaque = true
        self.clipsToBounds = true

    }
    override func draw(_ rect: CGRect) {
        
    }
    public func ShowCancelBtn(){
        for subView in self.subviews {
            for subSubView in subView.subviews {
                if let myBtn = subSubView as? UIButton{
                    myBtn.setTitle("HI", for: .normal)
                }
            }
        }
    }
}

//MARK:- DESIGN IMAGE VIEW
class designImageView: NSObject {
    
    static let sharedImageViewObject = designImageView()
    
    func roundImageview(img:UIImageView) -> UIImageView {
        img.layer.cornerRadius = img.frame.size.width / 2
        img.layer.masksToBounds = true
        img.clipsToBounds = true
        return img
    }
    func sequreImageview(img:UIImageView) -> UIImageView {
        img.layer.cornerRadius = 5.0
        img.layer.masksToBounds = true
        img.clipsToBounds = true
        return img
    }
}
//MARK:- FORMAT LABEL
class formatLabel: NSObject {
    
    func boldAttributedString(from string: String, nonBoldRange: NSRange?) -> NSAttributedString {
        //let fontSize = UIFont(name: "Avenir-Book", size: 13)
        let attrs:[String:Any] = [NSFontAttributeName: UIFont(name: "Avenir-Medium", size: 13) as Any,NSForegroundColorAttributeName: UIColor().titleColor()
        ]
        let nonBoldAttribute:[String:Any] = [NSFontAttributeName: UIFont(name: "Avenir-Book", size: 13) as Any]
        let attrStr = NSMutableAttributedString(string: string, attributes: attrs )
        if let range = nonBoldRange {
            attrStr.setAttributes(nonBoldAttribute, range: range)
        }
        return attrStr
    }
    
    func subScriptAttributedString(from string: String, nonSubStringRange: NSRange?) -> NSAttributedString {
        //let fontSize = UIFont(name: "Avenir-Book", size: 13)
        let attrs:[String:Any] = [NSFontAttributeName: UIFont(name: "Avenir-Book", size: 13) as Any]
        let nonBoldAttribute:[String:Any] = [NSFontAttributeName: UIFont(name: "Avenir-Book", size: 10) as Any]
        let attrStr = NSMutableAttributedString(string: string, attributes: attrs)
        if let range = nonSubStringRange {
            attrStr.setAttributes(nonBoldAttribute, range: range)
        }
        return attrStr
    }

    
}

class subImgViewOfSortingBtn: UIImageView {
    
}




protocol changeDataDelegate : class {
    
  func updateData()
}

