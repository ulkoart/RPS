//
//  ViewController.swift
//  RPS
//
//  Created by user on 02/12/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userScore: Int = 0
    var computerScore: Int = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var robotButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButton.isHidden = true
    }
    
    func play(_ sign: Sign) {
        let computerSign = randomSign()
        robotButton.setTitle(computerSign.emoji, for: .normal)
        
        switch sign {
        case .rock:
            robotButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            robotButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            robotButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        resetButton.isHidden = false
        
        let result = sign.getResult(computerSign)
        
        switch result {
        case .win:
            statusLabel.text = "It`s a win!"
            self.view.backgroundColor = UIColor.green
            
            userScore += 1
            scoreLabel.text = "\(userScore):\(computerScore)"
            
        case .lose:
            statusLabel.text = "You lose!"
            self.view.backgroundColor = UIColor.red
            
            computerScore += 1
            scoreLabel.text = "\(userScore):\(computerScore)"
        case .draw:
            statusLabel.text = "It`s a draw!"
            self.view.backgroundColor = UIColor.gray
        case .start:
            reset()
        }
        
    }
    
    func reset(){
        statusLabel.text = "Rock, Paper, Scissors?"
        self.view.backgroundColor = UIColor.white
        robotButton.setTitle("🤖", for: .normal)
        resetButton.isHidden = true
        
        robotButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
    }
    
    @IBAction func rockButtonPressed(_ sender: Any) {
        play(.rock)
    }
    
    @IBAction func paperButtonPressed(_ sender: Any) {
        play(.paper)
    }
    
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        play(.scissors)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        reset()
    }
}

