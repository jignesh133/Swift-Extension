//
//  UITextFieldCommanClasses.swift
//  OrangeWill
//
//  Created by MCA 2 on 30/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
@IBDesignable
class FormTextField: UITextField {
    
    @IBInspectable var paddingLeft: CGFloat = 0
    @IBInspectable var paddingRight: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + paddingLeft, y: bounds.origin.y, width: bounds.size.width - paddingLeft - paddingRight, height: bounds.size.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}

class UITextFieldCommanClasses: NSObject {

}
//MARK:- TEXTFIELD BOTTOM LINE
class textfieldBottomLine: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    private func setup(){
        
        let border = CALayer()
        border.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0).cgColor
        border.frame = CGRect(x: 0.0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1.0)
        self.layer.addSublayer(border)
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
        
        
        if self.tag == 101 {
            let _leftView = UIView()
            _leftView.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height+30, height: self.frame.size.height)
            _leftView.backgroundColor = .clear
            
            let icon = UIImageView()
            icon.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height-10, height: self.frame.size.height-10)
            icon.backgroundColor = .clear
            icon.contentMode = .scaleAspectFit
            icon.image = #imageLiteral(resourceName: "ic_phone")
            
            var tmpCenter = icon.center
            tmpCenter.y = _leftView.center.y
            icon.center = tmpCenter
            
            _leftView.addSubview(icon)
            
            let lbl = UILabel.init(frame: CGRect(x: icon.frame.size.width + 5, y: 0.0, width: 15.0, height: self.frame.size.height))
            lbl.text = "+91"
            lbl.backgroundColor = .clear
            lbl.textColor = .black
            lbl.sizeToFit()
            lbl.font = UIFont().avenirBook(mySize: myFontSize.standrad)
            var lblCenter = lbl.center
            lblCenter.y = _leftView.center.y
            lbl.center = lblCenter
            
            _leftView.addSubview(lbl)
            
            self.leftView = _leftView
            self.leftViewMode = .always
        }
        
    }
}
//MARK:- ADDING ASTRIC SIGN myCustomeTxtfield

class myCustomeTxtfield {
    
    public static func addRequiredSymbol(txtfield:UITextField){
        
        let myPrefixCharacter = "*"
        let myPrefixColor = UIColor.red
        /* original label text as NSAttributedString, prefixed with " " */
        let attr = [ NSForegroundColorAttributeName: myPrefixColor ]
        let myNewLabelText = NSAttributedString(string: myPrefixCharacter, attributes: attr)
        let myOrigLabelText = NSMutableAttributedString(string: txtfield.placeholder! + " " )
        
        /* set new label text as attributed string */
        //myNewLabelText.append(myOrigLabelText)
        myOrigLabelText.append(myNewLabelText)
        txtfield.attributedPlaceholder = myOrigLabelText
    }
    
}
