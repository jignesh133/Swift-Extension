//
//  Float+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
//MARK: EXTENDED CLASSES
extension Float {
    func roundToDecimal(_ fractionDigits: Int) -> Float {
        let multiplier = pow(10, Float(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
    
    func methodAmountString(_ fractionDigits: Int) -> String{
        let formater = NumberFormatter()
        formater.groupingSeparator = ","
        formater.numberStyle = .decimal
        let amt = self.roundToDecimal(fractionDigits)
        let testNSNumber: NSNumber = NSNumber(value: amt)
        let numberformeter =  formater.string(from: testNSNumber)!
        return "\(numberformeter)"
    }
    func strings() -> String{
        return "\(self)"
    }
}

class Float_Utils: NSObject {

}
