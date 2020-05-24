//
//  UIView+Extension.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

extension UIView {
    
    func setGradientBackgroundTwoColors(colorOne: UIColor, colorTwo: UIColor, cornerRadius: Int) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = "gradientLayer"
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.cornerRadius = CGFloat(cornerRadius)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    // horizontal gradient
    func setGradientBackgroundFourColors(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor, colorFour: UIColor, cornerRadius: Int) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = "gradientLayer"
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor, colorFour.cgColor]
        gradientLayer.locations = [0.0, 0.3, 0.7, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.4)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.6)
        gradientLayer.cornerRadius = CGFloat(cornerRadius)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
}


