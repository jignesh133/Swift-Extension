//
//  UIImageView+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
//MARK:- EXTENDED CLASSES

extension UIImageView{
    
    final func RoundImageView(frame:CGRect){
        self.layer.cornerRadius = frame.size.width / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
    final func RoundImageView(){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
}

class UIImageView_Utils: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
