//
//  CustomButton.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var hasGradient: Bool = false {
        didSet {
            updateGradient()
        }
    }
    
    @IBInspectable var isGreenGradient: Bool = true {
        didSet {
            updateGradient()
        }
    }
    
    @IBInspectable var isOutlined: Bool = false {
        didSet {
            updateOutline()
        }
    }
    
    @IBInspectable var hasCornerRadius: Bool = true {
        didSet {
            updateCornerRadius()
        }
    }
    
    @IBInspectable var hasShadow: Bool = true {
        didSet {
            updateShadow()
        }
    }
    
    @IBInspectable var color: UIColor = UIColor.clear {
        didSet {
            updateColor()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            updateOutline()
        }
    }
    
    // update button
    func updateGradient() {
                
        // update gradient
        if (hasGradient) {
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = bounds
            
            if (isGreenGradient) {
                gradientLayer.colors = [Colors.gradientBlueGreen.cgColor, Colors.gradientGreen.cgColor]
            } else {
                gradientLayer.colors = [Colors.gradientPink.cgColor, Colors.gradientOrange.cgColor]
            }
            
            gradientLayer.locations = [0.0, 1.0]
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint (x: 1, y: 0.5)
            
            self.setTitleColor(Colors.white, for: .normal)
            
            if (hasCornerRadius) {
                gradientLayer.cornerRadius = 23
            } else {
                gradientLayer.cornerRadius = 0
            }
            
            layer.insertSublayer(gradientLayer, at: 0)
        }
        
        else {
                self.backgroundColor = color
        }
    }
    
     // update corner radius
    private func updateColor() {
       if (!hasGradient) {
           self.backgroundColor = color
       }
   }
       
    
    // update corner radius
    private func updateCornerRadius() {
        if (hasCornerRadius) {
            layer.cornerRadius = 23
        } else {
            layer.cornerRadius = 0
        }
    }
    
    // update shadow
    private func updateShadow() {
        if (hasShadow) {
            layer.shadowColor   = UIColor.black.cgColor
            layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
            layer.shadowRadius  = 8
            layer.shadowOpacity = 0.5
            clipsToBounds       = true
            layer.masksToBounds = false
        } else {
            layer.shadowOffset  = CGSize(width: 0.0, height: 0.0)
            layer.shadowOpacity = 0.0
            
        }
    }
    
    // update outline
    private func updateOutline() {
        if (isOutlined) {
            self.backgroundColor = UIColor.clear
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = 3.0
        } else {
            self.layer.borderWidth = 0.0
        }
    }
}
