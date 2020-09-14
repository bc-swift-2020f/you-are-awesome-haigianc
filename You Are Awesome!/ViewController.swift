//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Claudine Haigian on 8/30/20.
//  Copyright © 2020 Claudine Haigian. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 5
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch{
                print("😡 ERROR: \(error.localizedDescription) Could not initialize AVAudioPLayer object.")
            }
            
        }
        else{
            print("😡 ERROR: Could not read data from file \(name)")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        repeat{
            newNumber = Int.random(in: 0...upperBounds)
        }while originalNumber == newNumber
        return newNumber
    }
    

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome",
                        "You Are Great!",
                        "You Are Da Bomb!",
                        "You Are A Legend!",
                        "When the Genius Bar needs help, they call you!"]
        
        //message
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        //image
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        //sound
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
        if playSoundSwitch.isOn{ //if playSoundSwitch is on
            playSound(name: "sound\(soundNumber)") //play sound
        }
    }
    
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil{ //if .isOn is NOT true
            audioPlayer.stop() //stop playing
        }
    }
}

