//
//  OnboardingQuestionViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/21/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class OnboardingQuestionViewController: UIViewController {
    
    var index = 0
    
    @IBOutlet var questionLabel: UILabel!
    var questionText: String?
    
    @IBOutlet var answerOneTextField: UITextView!
    var answerOneText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
