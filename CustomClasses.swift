//
//  CustomClasses.swift
//  OrangeWill
//
//  Created by Hupp Technologies on 10/06/17.
//  Copyright © 2017 Hupp Technologies. All rights reserved.
//

import Foundation


//MARK:- LOGIN VIEW TEXTFIELD CUSTOME CLASS

class TF_MobileNumber: UITextField{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    private func setup(){
        self.borderStyle = .none
        self.layer.cornerRadius = 0.0
        self.layer.masksToBounds = true
        self.isOpaque = true
        self.autocorrectionType = .no
        self.backgroundColor = .clear
        let attributedString = [NSForegroundColorAttributeName:UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.0)]
        self.attributedPlaceholder = NSAttributedString(string: "Mobile No.", attributes: attributedString)
        
        let _leftView = UIView()
        _leftView.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height+30, height: self.frame.size.height)
        _leftView.backgroundColor = .clear
        
        let icon = UIImageView()
        icon.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height-10, height: self.frame.size.height-10)
        icon.backgroundColor = .clear
        icon.contentMode = .scaleAspectFit
        icon.image = #imageLiteral(resourceName: "smartphone128")
        
        var tmpCenter = icon.center
        tmpCenter.y = _leftView.center.y
        icon.center = tmpCenter
        
        _leftView.addSubview(icon)
        
        let lbl = UILabel.init(frame: CGRect(x: icon.frame.size.width + 5, y: 0.0, width: 15.0, height: self.frame.size.height))
        lbl.text = "+91"
        lbl.backgroundColor = .clear
        lbl.textColor = .white
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
class TextfieldLogin: UITextField {
    
    override func draw(_ rect: CGRect) {
        
        self.borderStyle = .none
        self.layer.cornerRadius = 0.0
        self.layer.masksToBounds = true
        self.isOpaque = true
        self.autocorrectionType = .no
        self.backgroundColor = .clear
        
        let leftView = UIView()
        leftView.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height+10, height: self.frame.size.height)
        leftView.backgroundColor = .clear
        
        let icon = UIImageView()
        icon.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.height-5, height: self.frame.size.height-5)
        icon.backgroundColor = .clear
        icon.contentMode = .scaleAspectFit
        
        let attributedString = [NSForegroundColorAttributeName:UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.0)]
        
        switch self.tag {
        case 101:
            self.attributedPlaceholder = NSAttributedString(string: "Username", attributes: attributedString)
            icon.image = #imageLiteral(resourceName: "username")
            leftView.addSubview(icon)
            self.leftView = leftView
            self.leftViewMode = .always
            break
        case 102:
            
            self.attributedPlaceholder = NSAttributedString(string: "Password", attributes: attributedString)
            icon.image = #imageLiteral(resourceName: "password")
            leftView.addSubview(icon)
            self.leftView = leftView
            self.leftViewMode = .always
            break
            
        default:
            break
        }
        
        var tmpCenter = icon.center
        tmpCenter.x = leftView.frame.size.width/2
        tmpCenter.y = leftView.frame.size.height/2
        icon.center = tmpCenter
        
        let borderLine = UIView(frame:CGRect(x: (self.superview?.frame.origin.x)!, y: self.frame.origin.y + self.frame.height + 3, width: (self.superview?.frame.width)!, height: 1))
        borderLine.backgroundColor = .lightGray
        borderLine.alpha = 0.7
        self.superview?.addSubview(borderLine)
        self.superview?.layoutIfNeeded()
    }
    

}



//MARK:- IMAGE VIEW CUSTOM CLASSES
extension UIImageView{
    
    func ImageRound(img:UIImage){
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.image = img
    }
    func ImageSequare(img:UIImage) {
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        
        self.image = img
    }

    func loadImageFromServerWithFitMode(imgPath:String) {
        
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFit
        
        if let _urlNew = imgPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed){
            if ( _urlNew.isEmpty == false){
                self.sd_setImage(with: URL.init(string: _urlNew), placeholderImage: #imageLiteral(resourceName: "img2.jpeg"), options: [], completed: nil)
            }else{
                self.image = #imageLiteral(resourceName: "img2.jpeg")
            }
        }
    }
    
    func loadImageFromServer(imgPath:String) {
        
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
        
        if let _urlNew = imgPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed){
            if ( _urlNew.isEmpty == false){
                self.sd_setImage(with: URL.init(string: _urlNew), placeholderImage: #imageLiteral(resourceName: "img2.jpeg"), options: [], completed: nil)
            }else{
                self.image = #imageLiteral(resourceName: "img2.jpeg")
            }
        }
    }
    func loadRoundImageFromServer(imgPath:String) {
        
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
        
        if let _urlNew = imgPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed){
            if ( _urlNew.isEmpty == false){
                self.sd_setImage(with: URL.init(string: _urlNew), placeholderImage: #imageLiteral(resourceName: "img2.jpeg"), options: [], completed: nil)
            }else{
                self.image = #imageLiteral(resourceName: "img2.jpeg")
            }
        }
    }
    
}


class ImageViewRound: UIView {
 
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.layoutIfNeeded()

    }
}

class ImageViewSequare: UIImageView {
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
}

//MARK:- BUTTONS CUSTOM CLASSESS

class filterBtnBorder : UIButton{
    override func draw(_ rect: CGRect) {
        
        let border = CALayer()
        border.cornerRadius = 5.0
        border.borderColor = UIColor.lightGray.cgColor
        border.borderWidth = 1.0
        border.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
        border.name = "border"
        self.clipsToBounds = true
        self.layer.addSublayer(border)
    }
    
}



class BtnForFilter: UIButton {
    
    
    override func draw(_ rect: CGRect) {
        
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor(red:0.45, green:0.45, blue:0.41, alpha:1.0).cgColor
        self.layer.borderWidth = 1.0
        //self.layer.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        //self.layer.addSublayer(border)
        self.setTitleColor(UIColor().titleColor(), for: .normal)
        self.setTitleColor(.white, for: .selected)
    }
    
    override open var isSelected: Bool {
        didSet {
            if isSelected {
                backgroundColor = UIColor().basicOrangeColor()
                self.layer.borderColor = UIColor().basicOrangeColor().cgColor
            }
            else{
                backgroundColor = UIColor.white
            }
            //backgroundColor = isHighlighted ? UIColor().basicOrangeColor() : UIColor.white
        }
    }
    
    
}



