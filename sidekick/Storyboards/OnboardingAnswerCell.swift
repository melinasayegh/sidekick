//
//  OnboardingAnswerTableViewCell.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/21/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class OnboardingAnswerCell: UITableViewCell {
    
    @IBOutlet var answerButton: UIButton!
    
    var answerIndex: Int?
    
    func setAnswerCell(answer: OnboardingAnswer) {
        answerButton.setTitle(answer.text, for: .normal)
        
        if answer.isSelected {
            answerButton.setGradientBackgroundTwoColors(colorOne: Colors.gradientBlueGreen, colorTwo: Colors.gradientGreen, cornerRadius: 8)
            answerButton.setTitleColor(Colors.white, for: .normal)
            
            
        } else {
            answerButton.backgroundColor = Colors.lightGrey
            answerButton.setTitleColor(Colors.navy, for: .normal)
        }
        
        answerButton.layer.cornerRadius = 8
        answerButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 28, bottom: 0, right: 0)
    }
}

