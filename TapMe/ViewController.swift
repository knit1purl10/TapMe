//
//  ViewController.swift
//  TapMe
//
//  Created by Olivia Hon on 8/28/18.
//  Copyright © 2018 Olivia Hon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var player1Score = 0
    var player2Score = 0
    var isGameStarted = false
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        isGameStarted = true
        player1Score = 0
        player2Score = 0
        updateUI()
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
            sender.isEnabled = true
            self.isGameStarted = false
        }
        
    }
    
    @IBAction func player1ButtonPressed(_ sender: Any) {
        player1Score += 1
        updateUI()
    }
    
    @IBAction func player2ButtonPressed(_ sender: Any) {
        player2Score += 1
        updateUI()
    }
    
    func updateUI() {
        if isGameStarted {
            player1ScoreLabel.text = "Player 1 Score: \(player1Score)"
            player2ScoreLabel.text = "Player 2 Score: \(player2Score)"
        }
    }
    
}

