//
//  EnableSignUpViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/19/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class EnableSignUpViewController: UIViewController {
    
    @IBOutlet var enableLabel: UILabel!
    @IBOutlet var drawingImage: UIImageView!
    @IBOutlet var descriptionText: UITextView!
    @IBOutlet var allowButton: CustomButton!
    @IBOutlet var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // scroll on gradient
        

    }
    
    private func goToNotifications() -> Void {
        // change label, image & text
        self.enableLabel.text = "Enable notifications"
        self.drawingImage.image = UIImage(named: "notification")
        self.descriptionText.text = "So we can send you reminders for upcoming events and plans"
    }
    
    @IBAction func allowTapped(_ sender: Any) {
        
        // push ios allow alert
        
        // scroll screen & go to notifications
        // scroll
        //goToNotifications()
    }
    
    @IBAction func skipTapped(_ sender: Any) {
        // scroll screen & go to notifications
        // scroll
        //goToNotifications()
    }
    
}
