//
//  NSNumber+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
extension NSNumber {
    static func suffixNumber(number: NSNumber) -> String {
        var num:Double = number.doubleValue
        let sign = ((num < 0) ? "-" : "" )
        num = fabs(num)
        if (num < 1000.0) {
            return "\(sign)\(num)"
        }
        
        let exp: Int = Int(log10(num) / 3.0)
        let units: [String] = ["K","M","G","T","P","E"]
        let roundedNum: Double = round(10 * num / pow(1000.0,Double(exp))) / 10
        
        return "\(sign)\(roundedNum)\(units[exp-1])";
    }
}
class NSNumber_Utils: NSObject {

}
