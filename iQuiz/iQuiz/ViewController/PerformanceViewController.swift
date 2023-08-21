//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Wesley Rebouças on 14/08/23.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var points: Int?
    
    @IBOutlet weak var resultPerformanceLabbel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        performanceConfig()
    }
    
    func layoutConfig(){
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 12.0
    }
    
    func performanceConfig(){
        guard let points = points else { return }
        resultPerformanceLabbel.text = "Você acertou \(points) de \(questions.count) questões"
        
        let percentage = (points * 100) / questions.count
        percentageLabel.text = "Percentual final: \(percentage)%"
    }
}
