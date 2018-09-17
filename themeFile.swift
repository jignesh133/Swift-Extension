//
//  themeFile.swift
//  OrangeWill
//
//  Created by Hupp Technologies on 22/02/17.
//  Copyright © 2017 Hupp Technologies. All rights reserved.
//

import Foundation
import UIKit

enum myFontSize {
    case verysmall,small,medium,standrad,big
}

class navBarBtn: UIButton {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.titleLabel?.font = UIFont().avenirBook(mySize: myFontSize.standrad)
        self.setTitleColor(UIColor().basicOrangeColor(), for: .normal)
        self.setTitleColor(UIColor().titleColor(), for: .highlighted)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


