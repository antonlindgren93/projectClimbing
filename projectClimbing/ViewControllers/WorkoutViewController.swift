//
//  WorkoutViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-09.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit
import AVFoundation

class WorkoutViewController: UIViewController {

    
    var seconds = 30
    var timer = Timer()
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func slider(_ sender: UISlider) {
        seconds = Int(sender.value)
        secondLabel.text = String(seconds) + " seconds"
        
    }
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func startBtn(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(WorkoutViewController.counter), userInfo: nil, repeats: true)
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
        
    }
    
    @objc func counter() {
        
        seconds -= 1
        secondLabel.text = String(seconds) + " seconds"
        
        if seconds == 0 {
            timer.invalidate()
            audioPlayer.play()
            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
        }
    }
    
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stopBtn(_ sender: UIButton) {
        timer.invalidate()
        seconds = 30
        sliderOutlet.setValue(30, animated: true)
        secondLabel.text = "30 seconds"
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startOutlet.layer.cornerRadius = 20
        self.stopOutlet.layer.cornerRadius = 20
        self.popUpOutlet.layer.cornerRadius = 20
        popUpOutlet.isHidden = true
        
        do {
            let audioPath = Bundle.main.path(forResource: "Stopsound", ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch {
            
        }
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var popUpOutlet: UIView!
    @IBAction func popUpBtn(_ sender: Any) {
        popUpOutlet.isHidden = false
    }
    
    @IBOutlet weak var closePopOutlet: UIButton!
    @IBAction func closePopUp(_ sender: Any) {
        popUpOutlet.isHidden = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
