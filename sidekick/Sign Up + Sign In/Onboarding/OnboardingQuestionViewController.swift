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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return answers.count
    }

    // There is just one row in every section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = answers[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "OnboardingAnswerCell") as! OnboardingAnswerCell
        
        cell.setAnswerCell(answer: answer)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var selectedAnswer: OnboardingAnswer = Model.answerDataArray[index][indexPath.section]
        selectedAnswer.isSelected = true
        
        let selectedCell = self.tableView.cellForRow(at: indexPath) as! OnboardingAnswerCell
        selectedCell.selectCell()
        
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: IndexPath) {
        
        var unselectedAnswer: OnboardingAnswer = Model.answerDataArray[index][indexPath.section]
        unselectedAnswer.isSelected = false
        
        let unselectedCell = self.tableView.cellForRow(at: indexPath) as! OnboardingAnswerCell
        unselectedCell.unselectCell()
    }
}
