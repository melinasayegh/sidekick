//
//  OnboardingQuestionViewController.swift
//  sidekick
//
//  Created by Melina Sayegh on 5/21/20.
//  Copyright © 2020 Melina Sayegh. All rights reserved.
//

import UIKit

class OnboardingQuestionViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var index: Int! = 0
    var questionText: String?
    var answers: [OnboardingAnswer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questionText
        
        answers = getAnswerArray()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func getAnswerArray() -> [OnboardingAnswer] {
        return Model.answerDataArray[index]
    }
}

extension OnboardingQuestionViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = answers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "OnboardingAnswerCell") as! OnboardingAnswerCell
        
        cell.setAnswerCell(answer: answer)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var selectedAnswer: OnboardingAnswer = Model.answerDataArray[index][indexPath.row]
        selectedAnswer.isSelected = true
        
        let selectedCell = self.tableView.cellForRow(at: indexPath) as! OnboardingAnswerCell
        selectedCell.selectCell()
        
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: IndexPath) {
        
        var unselectedAnswer: OnboardingAnswer = Model.answerDataArray[index][indexPath.row]
        unselectedAnswer.isSelected = false
        
        let unselectedCell = self.tableView.cellForRow(at: indexPath) as! OnboardingAnswerCell
        unselectedCell.unselectCell()
    }
}