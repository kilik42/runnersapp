//
//  ViewController.swift
//  RunnersApp
//
//  Created by marvin evins on 11/24/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var playBtn: UIButton!
    @IBOutlet var timeLabel: UILabel!
    var timer = Timer()
    var time = 0
    
    
    
    
    
    var buttonState = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playBtn.layer.cornerRadius = 15.0
        playBtn.layer.borderWidth = 2.0
        playBtn.layer.borderColor = UIColor.white.cgColor
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func playButtonTapped(_ sender: Any) {
        if buttonState {
            
            playBtn.setTitle("Pause", for: [])
            buttonState = false
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
            
        } else {
            playBtn.setTitle("Play", for: [])
            buttonState = true
            
            
        }
    }


    @IBAction func resetTapped(_ sender: Any) {
        
    }
    
    
    @IBAction func stopTapped(_ sender: Any) {
        
    }
    
    
    func addToTime() {
        time += 1
        timeLabel.text = "\(time)"
    }
    
    
}

