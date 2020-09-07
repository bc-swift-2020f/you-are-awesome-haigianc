//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Claudine Haigian on 8/30/20.
//  Copyright © 2020 Claudine Haigian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome",
                        "You Are Great!",
                        "You Are Da Bomb!",
                        "You Are A Legend!",
                        "When the Genius Bar needs help, they call you!"]
       imageView.image = UIImage(named: "image\(Int.random(in: 0...9))") //9 is the number of images we have
       messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
    
        //        print(imageNumber)
        //        //let imageName = "image" + String(imageNumber)
        //        let imageName = "image\(imageNumber)"
        //        imageView.image = UIImage(named: imageName)
        //        imageNumber = imageNumber + 1
        //        if(imageNumber == 10){
        //            imageNumber = 0
        //        }
        //
        //        if(count < messages.count){
        //            messageLabel.text = messages[count]
        //            count += 1
        //            if(count == messages.count){
        //                count = 0
        //            }
        //        }
        
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        }
        //        else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        }
        //        else{
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
        
        
        
    }
    
}

