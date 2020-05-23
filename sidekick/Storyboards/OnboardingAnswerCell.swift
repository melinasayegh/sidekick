//
//  OnboardingAnswerTableViewCell.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/21/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class OnboardingAnswerCell: UITableViewCell {
    
    
    @IBOutlet var answerView: UIView!
    @IBOutlet var answerLabel: UILabel!
    
    var answerIndex: Int?
    
    func setAnswerCell(answer: OnboardingAnswer) {
        
        answerLabel.text = answer.text
        answerView.layer.cornerRadius = 8
        if answer.isSelected {
            selectCell(answer: answer)
        } else {
            unselectCell(answer: answer)
        }
    }
    
    func selectCell(answer: OnboardingAnswer) {
        answerView.setGradientBackgroundTwoColors(colorOne: Colors.gradientBlueGreen, colorTwo: Colors.gradientGreen, cornerRadius: 8)
        answerLabel.textColor = Colors.white
        
        //answer.isSelected()
        
    }
    
    func unselectCell(answer: OnboardingAnswer) {
        // remove gradient background
        answerView.backgroundColor = Colors.lightGrey
        answerLabel.textColor = Colors.navy
        
        //answer.isSelected()
    }
}

