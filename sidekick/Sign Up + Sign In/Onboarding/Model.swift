//
//  Model.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/21/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import Foundation


struct Model {
    
    static let questionDataArray = ["How do you get around?",
                             "Are you adventurous?",
                             "Which of the following \ndescribes you?",
                             "How do you feel about \ncrowds?",
                             "What type of events do \nyou like to attend?"]
    
    static let answerDataArray =
        [[OnboardingAnswer(text: "I like to stay close to home", isSelected: false),
          OnboardingAnswer(text: "I walk everywhere", isSelected: false),
          OnboardingAnswer(text: "I take public transportation", isSelected: false),
          OnboardingAnswer(text: "I have a car", isSelected: false)],

         [OnboardingAnswer(text: "Every once and awhile, \nI like to do something crazy", isSelected: false),
          OnboardingAnswer(text: "Sign me up for new things, \nI'm down", isSelected: false)],
         
         [OnboardingAnswer(text: "Total introvert: \nI like to go places alone", isSelected: false),
          OnboardingAnswer(text: "I like to do things alone \nsometimes", isSelected: false),
          OnboardingAnswer(text: "I need at least one friend with \nme, always", isSelected: false),
          OnboardingAnswer(text: "Extroverted, for sure \nI like to be in groups", isSelected: false)],
         
         [OnboardingAnswer(text: "Nope, I'm claustrophobic", isSelected: false),
          OnboardingAnswer(text: "I prefer small, intimate venues", isSelected: false),
          OnboardingAnswer(text: "I'm indifferent, I like both", isSelected: false),
          OnboardingAnswer(text: "Love them!", isSelected: false)],
    
         [OnboardingAnswer(text: "Temporary...", isSelected: false),
          OnboardingAnswer(text: "Music", isSelected: false),
          OnboardingAnswer(text: "Sports", isSelected: false)]]
    
}
