//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Wesley Rebouças on 14/08/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        questionConfig()
    }
    
    var points = 0
    var questionNumber = 0
    
    @IBOutlet weak var questionLabelTitle: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBAction func handlePressButton(_ sender: UIButton) {
        let isCorrectAnswer = questions[questionNumber].correctAnswer == sender.tag
        sender.setTitleColor(.white, for: .normal)
        if isCorrectAnswer{
            points += 1
            sender.backgroundColor = UIColor.correctAnswerColor
        } else {
            sender.backgroundColor = UIColor.incorrectAnswerColor
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.8 , target: self, selector: #selector(questionConfig), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(timeInterval: 0.8 , target: self, selector: #selector(goToPerformanceView), userInfo: nil, repeats: false)
        }
    }
    
    @objc func goToPerformanceView() {
        performSegue(withIdentifier: "goToPerformanceView", sender: nil)
    }
    
    func layoutConfig(){
        navigationItem.hidesBackButton = true
        questionLabelTitle.numberOfLines = 0
        questionLabelTitle.textAlignment = .center
        for button in answerButtons  {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func questionConfig(){
        questionLabelTitle.text = questions[questionNumber].title
        for button in answerButtons {
            let titleButton = questions[questionNumber].answer[button.tag]
            button.setTitle( titleButton, for: .normal )
            button.backgroundColor = .white
            button.setTitleColor(UIColor(red: 82/255, green: 30/255, blue: 164/255, alpha: 1), for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.points = points
    }

}
