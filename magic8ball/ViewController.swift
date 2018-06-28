//
//  ViewController.swift
//  magic8ball
//
//  Created by Natalie Nuno on 6/22/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func askButtonPressed(_ sender: UIButton) {
        BallShuffleImage()
    }
    
    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    
   
    func BallShuffleImage(){
        let randAnswer = Int(arc4random_uniform(4))
        
        ballImage.image = UIImage(named: ballArray[randAnswer])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        BallShuffleImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BallShuffleImage()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

