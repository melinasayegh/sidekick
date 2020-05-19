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

        self.setupButtons()
    }
    
    func setupButtons() {
        // set up buttons, change colors
        // sign up button
        self.signUpButton.setGradientBackground(colorOne: Colors.gradientGreen, colorTwo: Colors.gradientGreenBlue, isRounded: true)
        
        // sign in button
        self.signInButton.backgroundColor = Colors.white
        self.signInButton.layer.borderColor = Colors.white.cgColor
        self.signInButton.setTitleColor(Colors.navy, for: .normal)
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
    }
    
    
}

