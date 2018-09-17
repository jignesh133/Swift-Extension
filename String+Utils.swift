//
//  String+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
//MARK:- STRING CLASS CUSTOM METHODS
extension String {
    
    static func random(length: Int = 10) -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""
        
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(base.characters.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
    
    // COUT
    var countStringlength:Int {
        return self.distance(from: self.startIndex, to: self.endIndex)
    }
    //Add charcters in each occurance of character
    var dateFromISO8601: Date? {
        return Date.Formatter.iso8601.date(from: self)
    }
    
    func toBool() -> Bool? {
        switch self {
        case "True", "true", "yes", "1":
            return true
        case "False", "false", "no", "0":
            return false
        default:
            return nil
        }
    }
    
    func getDate() -> Date?  {
        let dateFormatter = DateFormatter()
        //dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        dateFormatter.locale = mylocal
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        let localDateString = dateFormatter.date(from: self as String) // <-- !!!
        return localDateString
    }
    func changeDateFormat() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "dd-MM-yyyy"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    func changeDateFormatMMMDDYYY() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "dd-MM-yyyy"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "MMM dd, yyyy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormatMMMDDYYYWithOriginFormate(originFormate:String) -> String?{
        let formater = DateFormatter()
        formater.dateFormat = originFormate
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "MMM dd, yyyy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormatDDMMYYYWith(originFormate:String) -> String?{
        let formater = DateFormatter()
        formater.dateFormat = originFormate
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yyyy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormatWithTime() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formater.timeZone = TimeZone.init(abbreviation: "UTC")
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy 'at' hh:mm a"
            formater.timeZone = TimeZone.current
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormatWithoutTimeZone() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
      //  formater.timeZone = TimeZone.init(abbreviation: "UTC")
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy 'at' hh:mm a"
            formater.timeZone = TimeZone.current
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormatWithTime(strDateFormate:String) -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formater.timeZone = TimeZone.init(abbreviation: "UTC")
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = strDateFormate//"dd MMM yy 'at' hh:mm a"
            formater.timeZone = TimeZone.current
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func DT_Current() -> String {
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy 'at' hh:mm a"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func DT_CurrentDateTime() -> String {
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func getDateWithTime() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        //formater.timeZone = TimeZone.init(abbreviation: "UTC")
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        formater.locale = mylocal
        formater.timeZone = TimeZone.init(secondsFromGMT: 0)
        if let date2:Date = formater.date(from: self){
            return date2
        }
        return nil
    }
    
    
    
    func getDateWithTime2() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd"
        if let date2:Date = formater.date(from: self){
            return date2
        }
        return nil
    }
    func getDateWithTime3() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "dd-MM-yyyy"
        if let date2:Date = formater.date(from: self){
            return date2
        }
        return nil
    }
    func getDateWithTime4() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "dd MMM yyyy"
        if let date2:Date = formater.date(from: self){
            return date2
        }
        return nil
    }
    
    
    func changeDateFormatWithTime2() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    func changeDateFormat3() -> String?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd.MM.yyyy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    
    func dateForActivity() -> String?{
        let formater = DateFormatter()
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        formater.locale = mylocal
        formater.timeZone = TimeZone.init(secondsFromGMT: 0)
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    func ChangeFormatForCompare() -> String?{
        let formater = DateFormatter()
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        formater.locale = mylocal
        formater.timeZone = TimeZone.init(secondsFromGMT: 0)
        formater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "yyyy-MM-dd"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    func DateWithDD_MMM_YY() -> String?{
        let formater = DateFormatter()
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        formater.locale = mylocal
        formater.timeZone = TimeZone.init(secondsFromGMT: 0)
        formater.dateFormat = "yyyy-MM-dd"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd MMM yy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    func DateWithFulMonth() -> String?{
        let formater = DateFormatter()
        let mylocal  = Locale.init(identifier: "en_US_POSIX")
        formater.locale = mylocal
        formater.timeZone = TimeZone.init(secondsFromGMT: 0)
        formater.dateFormat = "yyyy-MM-dd"
        if let date2:Date = formater.date(from: self){
            formater.dateFormat = "dd, MMMM yyyy"
            let str:String = formater.string(from: date2)
            return "\(str)"
        }
        return ""
    }
    
    
    func dateForSchedule() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd"
        if let _ :Date = formater.date(from: self){
            formater.dateFormat = "yyyy-MM-dd"
            return formater.date(from: self)
        }
        return Date()
    }
    
    func dt_DDMMYYYY() -> Date?{
        let formater = DateFormatter()
        formater.dateFormat = "dd-MM-yyyy"
        if let _ :Date = formater.date(from: self){
            formater.dateFormat = "dd-MM-yyyy"
            return formater.date(from: self)
        }
        return Date()
    }
    
    
    func AddBulletSign() -> NSAttributedString{
        let myPrefixCharacter = "\u{2022}"
        let myPrefixColor = UIColor.lightGray
        /* original label text as NSAttributedString, prefixed with " " */
        let attr = [ NSForegroundColorAttributeName: myPrefixColor ]
        let myNewLabelText = NSAttributedString(string: myPrefixCharacter, attributes: attr)
        let myOrigLabelText = NSMutableAttributedString(string: self + " " )
        myOrigLabelText.append(myNewLabelText)
        return myOrigLabelText
    }
    func AddBlackBulletSign() -> NSAttributedString{
        let myPrefixCharacter = "\u{2022}"
        let myPrefixColor = UIColor.black
        /* original label text as NSAttributedString, prefixed with " " */
        let attr = [ NSForegroundColorAttributeName: myPrefixColor ]
        let myNewLabelText = NSAttributedString(string: myPrefixCharacter, attributes: attr)
        let myOrigLabelText = NSMutableAttributedString(string: self + " " )
        myOrigLabelText.append(myNewLabelText)
        return myOrigLabelText
    }
    func makeBold()-> NSAttributedString {
        
        let attrs:[String:Any] = [NSFontAttributeName: UIFont(name: "Avenir-Medium", size: 14) as Any]//,NSForegroundColorAttributeName: UIColor().titleColor()
        let attrStr = NSMutableAttributedString(string: self, attributes: attrs )
        return attrStr
    }
    
    func underLineMyText() -> NSAttributedString {
        let underlineAttribute = [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue , NSForegroundColorAttributeName: UIColor().titleColor()] as [String : Any]
        let underlineAttributedString = NSAttributedString(string: self, attributes: underlineAttribute)
        return underlineAttributedString
    }
    func underLineMyTextOrange() -> NSAttributedString {
        let underlineAttribute = [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue , NSForegroundColorAttributeName: UIColor().basicOrangeColor()] as [String : Any]
        let underlineAttributedString = NSAttributedString(string: self, attributes: underlineAttribute)
        return underlineAttributedString
    }
    
    func makeStrikThrough() -> NSAttributedString {
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSBaselineOffsetAttributeName, value: 0, range: NSMakeRange(0, attributeString.length))
        attributeString.addAttribute(NSStrikethroughStyleAttributeName, value: 1, range: NSMakeRange(0, attributeString.length))
        attributeString.addAttributes([NSForegroundColorAttributeName: UIColor().titleColor()], range: NSMakeRange(0, attributeString.length))
        
        return attributeString
        
    }
}

class String_Utils: NSObject {

}
