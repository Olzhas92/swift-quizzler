//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz: [String] = ["Four + Two equals to Six", "Nine - Six equals to Three", "Five + Four equals to Nine"]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        updateUI()
}
    func updateUI() {
        if questionNumber <= quiz.count - 1 {
            questionLabel.text = quiz[questionNumber]
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
