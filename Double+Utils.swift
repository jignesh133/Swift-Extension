//
//  Double+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
extension Double {
    func getTimeStamp() -> String {
        let date = Date(timeIntervalSince1970: self)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: date)
    }
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
    func methodAmountString(_ fractionDigits: Int) -> String{
        let formater = NumberFormatter()
        formater.groupingSeparator = ","
        formater.numberStyle = .decimal
        let amt = self.roundToDecimal(fractionDigits)
        let testNSNumber: NSNumber = NSNumber(value: amt)
        let numberformeter =  formater.string(from: testNSNumber)!
        // ADDED FOR FRACTION DEGITS
        if (fractionDigits == 0){
            return "\(numberformeter)" + ".00"
        }
        return "\(numberformeter)"
        
    }
}

class Double_Utils: NSObject {

}
