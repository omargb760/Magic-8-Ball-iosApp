//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Omar Gonzalez on 5/6/19.
//  Copyright © 2019 Omar Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2", "ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    @IBOutlet weak var ImageView: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
    }
    
    @IBAction func askButtonPress(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    

}

