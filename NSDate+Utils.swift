//
//  NSDate+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
//MARK:- DATE CLASS CUSTOM MEHTODS
extension Date{
    
    func CurrentDate() -> String {
        let formater = DateFormatter()
        formater.dateFormat = "ddMMyyyyhhmmssSSSS"
        let str:String = formater.string(from: self)
        return "\(str)"
    }
    func CurrentDateChangeWithTime() -> String {
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.calendar = NSCalendar.current
        dateFormatter.timeZone = TimeZone.current
        
        guard let dt = dateFormatter.date(from: Date().CPFormatDateWithTime) else{
            return Date().CPFormatDateWithTime
        }
        
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return "\(dateFormatter.string(from: dt))"
        
    }
    
}

//MARK:- DATE EXTENSION
extension Date {
    
    init?(jsonDate: String) {
        let prefix = "/Date("
        let suffix = ")/"
        let scanner = Scanner(string: jsonDate)
        
        // Check prefix:
        guard scanner.scanString(prefix, into: nil)  else { return nil }
        
        // Read milliseconds part:
        var milliseconds : Int64 = 0
        guard scanner.scanInt64(&milliseconds) else { return nil }
        // Milliseconds to seconds:
        var timeStamp = TimeInterval(milliseconds)/1000.0
        
        // Read optional timezone part:
        var timeZoneOffset : Int = 0
        if scanner.scanInt(&timeZoneOffset) {
            let hours = timeZoneOffset / 100
            let minutes = timeZoneOffset % 100
            // Adjust timestamp according to timezone:
            timeStamp += TimeInterval(3600 * hours + 60 * minutes)
        }
        
        // Check suffix:
        guard scanner.scanString(suffix, into: nil) else { return nil }
        
        // Success! Create NSDate and return.
        self.init(timeIntervalSince1970: timeStamp)
    }
    
    var CPMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self as Date)
    }
    
    var CPHour0x: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh"
        return dateFormatter.string(from: self as Date)
    }
    var CPMinute0x: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm"
        return dateFormatter.string(from: self as Date)
    }
    var CPHourMinute0x: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        return dateFormatter.string(from: self as Date)
    }
    var CPFormatCompare: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self as Date)
    }
    
    var CPFormatDateWithTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: self as Date)
    }
    var CPFormatWithTimeZoneDateWithTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: self as Date)
    }

    var CPDateWithDDMMMYY: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yy"
        return dateFormatter.string(from: self as Date)
    }
    
    var CPDateWithDDMMMYY2: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self as Date)
    }
    
    var CPDateWithDDMMMYY3: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter.string(from: self as Date)
    }
    
    func dateToString(strFormatter:String) -> String  {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = NSTimeZone.local
        dateFormatter.dateFormat = strFormatter
        let localDateString = dateFormatter.string(from: self as Date) // <-- !!!
        return localDateString
    }
    
    var getTimeStamp: String {
        
        let nowDouble = self.timeIntervalSince1970
        let timeStamp = Int64(nowDouble)
        return getStringFromAny(timeStamp as Any)
    }
    
    var CPFormatDateWithTime2: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmmss"
        return dateFormatter.string(from: self as Date)
    }
    
    struct Formatter {
        static let iso8601: DateFormatter = {
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyyMMddHHmmss"
            return formatter
        }()
    }
    var iso8601: String {
        return Formatter.iso8601.string(from: self)
    }
    
    
    func onStyleDate(dateString: String) -> String {
        
        var myDateString = ""
        
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy"
        
        if let recDate = df.date(from: dateString) {
            df.dateFormat = "dd MMM yyyy"
            myDateString = df.string(from: recDate)
        }
        return myDateString
    }
    
}

class NSDate_Utils: NSObject {

}
