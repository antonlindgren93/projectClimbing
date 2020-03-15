//
//  LogTraning2ViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-11.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase


class LogTraning2ViewController: UIViewController {
    
    @IBOutlet weak var locationText: UITextField!
    @IBOutlet weak var boulderRopeText: UITextField!
    @IBOutlet weak var gradeText: UITextField!
    @IBOutlet weak var durationText: UITextField!
    @IBOutlet weak var notesText: UITextView!
    
     
    
    @IBAction func saveBtn(_ sender: UIButton) {
       
        let db = Firestore.firestore()
        
        let loc = locationText.text
        let grade = gradeText.text
        let type = boulderRopeText.text
        let time = durationText.text
        let notes = notesText.text
                    
        db.collection("climbs").addDocument(data: ["location":loc ?? "unknown","grade":grade ?? "No grade entered", "type of climb":type ?? "Both", "duration":time ?? "no time entered", "notes":notes ?? "No notes added" ]) { (error) in
            if let error = error {
                print ("There was an error\(error)")
            } else {
                print ("Good job saving the data")
                
        }
            
            
                    
    }
    
        func viewDidLoad() {
        super.viewDidLoad()
            
            locationText.delegate = self
            boulderRopeText.delegate = self
            gradeText.delegate = self
            durationText.delegate = self
            //notesText.delegate = self

        // Do any additional setup after loading the view.
    }
      

}
    
    
}
extension LogTraning2ViewController : UITextFieldDelegate {
          
          func textFieldShouldReturn(_ textField: UITextField) -> Bool {
              textField.resignFirstResponder()
              return true
          }
      }

