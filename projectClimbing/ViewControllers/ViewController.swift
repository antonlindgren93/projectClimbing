//
//  ViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-02-27.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    
    var videoPlayerLayer:AVPlayerLayer?
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var logInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //setUpVideo()
    }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(signUpBtn)
        Utilities.styleHollowButton(logInBtn)
        
    }
    
    /*func setUpVideo() {
        
        let bundlePath = Bundle.main.path(forResource: "climbingHomescreen", ofType: "mp4")
        
        guard bundlePath != nil else {
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        let item = AVPlayerItem(url: url)
        
        videoPlayer = AVPlayer(playerItem: item)
        
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y:0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        videoPlayer?.playImmediately(atRate: 0.3)
    }*/


}

