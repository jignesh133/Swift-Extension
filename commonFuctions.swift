//
//  commonFuctions.swift
//  OrangeWill
//
//  Created by Hupp Technologies on 02/06/17.
//  Copyright © 2017 Hupp Technologies. All rights reserved.
//

import Foundation
import SDWebImage
import SimpleImageViewer

// DEVICE CHECK
struct ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let frame = CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height)
    static let maxWH = max(ScreenSize.width, ScreenSize.height)
}

// DEVICE CHECK
struct DeviceType {
    static let iPhone4orLess  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxWH < 568.0
    static let iPhone5orSE    = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxWH == 568.0
    static let iPhone678      = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxWH == 667.0
    static let iPhone678p     = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxWH == 736.0
    static let iPhoneX        = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxWH == 812.0
}

class EmptyView: UIView {
    override init (frame : CGRect) {
        super.init(frame : frame)
        setup()
    }
    convenience init () {
        let width = UIScreen.main.bounds.width
        let frame = CGRect.init(x: 0.0, y: 0.0, width: width, height: 160)
        self.init(frame:frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    private func setup(){
        
        let imgView = UIImageView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: 150, height: 80))
        imgView.image = #imageLiteral(resourceName: "activityNone")
        imgView.contentMode = .scaleAspectFit
        imgView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        imgView.isUserInteractionEnabled = false
        
        var center = imgView.center
        center.x = self.frame.width / 2
        imgView.center = center
        
        self.addSubview(imgView)
        
        let width = UIScreen.main.bounds.width
        let lbl = UILabel.init(frame: CGRect.init(x: 0.0, y: imgView.frame.size.height, width: width, height: 20))
        lbl.text = "Oops, looks empty around here!"
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        lbl.font = UIFont.init(name: "Avenir-Medium", size: 16.0)
        lbl.textColor = UIColor().titleColor()
        
        
        self.addSubview(lbl)
        self.backgroundColor = .clear
        self.isUserInteractionEnabled = false
    }
    

}
//MARK:- GET VALUE FROM ANY
func getCoordinate() -> CLLocationCoordinate2D{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    return CLLocationCoordinate2D(latitude: (appDelegate.locationManager.location?.coordinate.latitude) ?? 0, longitude: (appDelegate.locationManager.location?.coordinate.longitude) ?? 0)
}
func getStringFromAny(_ obj : Any) -> String {
    
    if let value = obj as? String{
        return value
    }
    else if obj is NSNull {
        return ""
    }
    else{
        return "\(obj)"
    }
}


func getIntegerFromAny(_ obj:Any) ->Int{
    
    if let value:NSString = obj as? NSString{
        if value.length <= 0{
            return 0
        }
       return value.integerValue
    }
    else if let value:Int = obj as? Int{
        return value
    }
    else{
        return 0
    }
}
func getFloatFromAny(_ obj:Any) ->Float{
    
    if let value:NSString = obj as? NSString{
        if value.length <= 0{
            return 0
        }
        return value.floatValue
    }
    else if let value:Float = obj as? Float{
        return value
    }
    else{
        return 0
    }
}
func getDoubleFromAny(_ obj:Any) ->Double{
    
    if let value:NSString = obj as? NSString{
        if value.length <= 0{
            return 0
        }
        return value.doubleValue
    }
    else if let value:Double = obj as? Double{
        return value
    }
    else{
        return 0
    }
}
func getRoundingFloatFromAny(_ obj:Any) ->Float{
    
    if let value:NSString = obj as? NSString{
        if value.length <= 0{
            return 0
        }
        return value.floatValue.roundToDecimal(2)
    }
    else if let value:Float = obj as? Float{
        return value.roundToDecimal(2)
    }
    else{
        return 0
    }
}

func getInt64FromAny(_ obj:Any) ->Int64{
    
    if let value:String = obj as? String , let newValue = Int64(value){
        return newValue
    } else if let value:Int64 = obj as? Int64{
        return value
    } else if let value:NSNumber = obj as? NSNumber{
        return Int64.init(value)
    } else if let value:Int = obj as? Int {
        return Int64(value)
    } else {
        return 0
    }
}

func convertToDictionary(text: String) -> [String: Any]? {
    if let data = text.data(using: .utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            print(error.localizedDescription)
        }
    }
    return nil
}

func getUserName() -> String {
    return UserDefaults.standard.value(forKey: UserInfo.user_Fname.rawValue) as? String ?? ""
}
func getUserTypeId() -> Int64 {
    return UserDefaults.standard.value(forKey: UserInfo.user_type_id.rawValue) as? Int64 ?? 0
}
func getCusTypeId() -> Int {
    return UserDefaults.standard.value(forKey: UserInfo.cusTypeId.rawValue) as? Int ?? 0
}
func getSupTypeId() -> Int {
    return UserDefaults.standard.value(forKey: UserInfo.SupTypeId.rawValue) as? Int ?? 0
}
func getUserId() -> Int64 {
    return UserDefaults.standard.value(forKey: UserInfo.user_id.rawValue) as? Int64 ?? 0
}
func getCusId() -> Int {
    return UserDefaults.standard.value(forKey: UserInfo.CusId.rawValue) as? Int ?? 0
}
func getSupId() -> Int {
    return UserDefaults.standard.value(forKey: UserInfo.SupId.rawValue) as? Int ?? 0
}
func getUserRole() -> UserRole{
    return UserRole(rawValue: UserDefaults.standard.integer(forKey: UserInfo.userTypeID.rawValue)) ?? .none
}



//MARK:- custom alert
func ShowAlert(title:String?,msg:String,view:UIViewController) {
    
    let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
    let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
    alert.addAction(ok)
    view.present(alert, animated: true, completion: nil)
    
}



//MARK: LABLE SETTINGS 

class UnderlinedLabel: UILabel {
    
    func underLineText(text: String) -> String {
        let underlineAttribute = [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue]
        let underlineAttributedString = NSAttributedString(string: text, attributes: underlineAttribute)
        return underlineAttributedString.string
    }
    
}

