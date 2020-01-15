//
//  ViewController.swift
//  War
//
//  Created by Royce Bradley on 2020-01-12.
//  Copyright © 2020 Royce Bradley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backgroundIV: UIImageView!
    @IBOutlet weak var firstCardIV: UIImageView!
    @IBOutlet weak var secondCardIV: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    @IBOutlet weak var Background: UIImageView!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var cardArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card14"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
    
        //Generate random numbers
        let randImage =  Int(arc4random_uniform(13))
        let randImage2 = Int(arc4random_uniform(13))
        
        //use random number to select card from array
        self.firstCardIV.image = UIImage(named: cardArray[randImage])
        self.secondCardIV.image = UIImage(named: cardArray[randImage2])
        
        //set the winnerLabel to blank when new game begins
        winnerLabel.text = " "
        
        //if random card 1 is greater than random card 2 increment player score by 1
        //and display in UI
        if randImage > randImage2{
            playerScore += 1
            playerScoreLabel.text = String(playerScore)

        }
        //if the cards are equal do nothing
        else if randImage == randImage2 {
            
        }
            
        //if random card 2 is greater than random card 1 increment enemy score by 1
        //and display in UI
        else{
            enemyScore+=1
            enemyScoreLabel.text = String(enemyScore)
        }
        
        //if player reaches 5 display winners label and reset score
        if playerScore == 5{
            winnerLabel.text = "You Win!"
            playerScore = 0
            enemyScore = 0
            playerScoreLabel.text = String(0)
            enemyScoreLabel.text = String(0)
            
        }
        //if enemy reaches 5 display losers label and reset score
        else if enemyScore == 5{
            winnerLabel.text = "You Lose!"
            playerScore = 0
            enemyScore = 0
            playerScoreLabel.text = String(0)
            enemyScoreLabel.text = String(0)
        }
    }
    
}

