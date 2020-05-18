//
//  RgbaUIColorExtension.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

// RGBA usage
// static let primaryBlue = UIColor.rgba(red: 0, green: 122, blue: 255, alpha: 1)
// static let transparentBlack = UIColor.rgba(red: 0, green: 0, blue: 0, alpha: 0.5)
