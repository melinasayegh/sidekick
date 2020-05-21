//
//  LandingPage.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/18/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {
    
    
    @IBOutlet private var signUpButton: CustomButton!
    @IBOutlet private var signInButton: CustomButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // edit sign up button to be blue gradient
        self.signUpButton.setGradientBackgroundFourColors(colorOne: Colors.gradientBlue, colorTwo: Colors.gradientBlueGreen,
        colorThree: Colors.gradientGreenBlue, colorFour: Colors.gradientGreen,
        isRounded: true)
    }
    
}

