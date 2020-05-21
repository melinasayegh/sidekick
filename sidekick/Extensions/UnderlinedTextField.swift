//
//  UnderlinedTextField.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/20/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

@IBDesignable
class UnderlinedTextField: UITextField {
    
    var bottomLine = CALayer()
    
    @IBInspectable var isUnderlined: Bool = true {
       didSet {
           underline()
       }
    }
    
    private func underline() {
        if (isUnderlined) {
            bottomLine.frame = CGRect(x: 0.0, y: self.frame.height, width: 300, height: 1.0)
            bottomLine.backgroundColor = UIColor.white.cgColor
            self.borderStyle = UITextField.BorderStyle.none
            self.layer.insertSublayer(bottomLine, at: 0)
            
            let lightColor = UIColor(red: 252/255, green: 254/255, blue: 255/255, alpha: 0.7)
            let placeholder = self.placeholder ?? "" //There should be a placeholder set in storyboard or elsewhere string or pass empty
            self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: lightColor])
            
        } else {
            //
        }
    }
}
