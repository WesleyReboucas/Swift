//
//  ViewController.swift
//  iQuiz
//
//  Created by Wesley Rebouças on 10/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
    }
    
    @IBOutlet weak var StartQuizButton: UIButton!
    
    @IBAction func PressButton(_ sender: Any) {
        print("Botão pressionado!")
    }
    
    func layoutConfig(){
        navigationItem.hidesBackButton = true
        StartQuizButton.layer.cornerRadius = 12.0
    }
     
}
