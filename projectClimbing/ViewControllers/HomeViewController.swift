//
//  HomeViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-02-27.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var traningImgBtn: UIImageView!
    @IBOutlet weak var climbingImgBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

               // create tap gesture recognizer
               let tapGestureClimb = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.imageTapped(gesture:)))
        
                let tapGestureWO = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.imageTapped(gesture:)))

               // add it to the image view;
               climbingImgBtn.addGestureRecognizer(tapGestureClimb)
               // make sure imageView can be interacted with by user
               climbingImgBtn.isUserInteractionEnabled = true
            
        
                traningImgBtn.addGestureRecognizer(tapGestureWO)
                              
                traningImgBtn.isUserInteractionEnabled = true
        
           }

           @objc func imageTapped(gesture: UIGestureRecognizer) {
               // if the tapped view is a UIImageView then set it to imageview
               if (gesture.view as? UIImageView) != nil {
                   print("Image Tapped")
                   //Here you can initiate your new ViewController
                
                /*let viewController = self.storyboard?.instantiateViewController(withIdentifier: "climbingVC") as! ClimbingViewController
                let navigationController = UINavigationController(rootViewController: viewController)
                self.present(navigationController, animated: true, completion: nil)*/
               }

}
}

