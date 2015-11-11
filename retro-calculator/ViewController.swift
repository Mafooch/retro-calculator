//
//  ViewController.swift
//  retro-calculator
//
//  Created by Raizlabs Corp on 11/10/15.
//  Copyright © 2015 Raizlabs Corp. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }
    @IBAction func onDividePressed(sender: AnyObject) {
    }
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    @IBAction func onSubtractPressed(sender: AnyObject) {
    }
    @IBAction func onAddPressed(sender: AnyObject) {
    }
    @IBAction func onEqualPressed(sender: AnyObject) {
    }
}

