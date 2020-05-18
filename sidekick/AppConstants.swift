//
//  AppConstants.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    // Colors, Images, Fonts
    struct Design {
        struct Color {
            struct Primary {
                static let white = UIColor.rgba(red: 252, green: 254, blue: 255, alpha: 1)
                static let navy = UIColor.rgba(red: 21, green: 22, blue: 65, alpha: 1)
               
            }
            struct Secondary {
               
            }
            struct Grayscale {
                
            }
        }
        struct Image {
            // example: static let icoStar = UIImage(named: "ico_imageName")
          
        }
        struct Font {
           
            // example: static let Body = UIFont.systemFont(ofSize: 16, weight: .regular)
           
        }
        
    }

    struct Content {
        
        // example: static let Category = "category"
    }

    struct API {
        
        // example: static let twitterApiUrl = "https://api.twitter.com/"
        // example: static let DB_REF = Firestore.firestore()
        
    }
    
}
