//
//  LogTrainingViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-10.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit

class LogTrainingViewController: UIViewController {

    @IBOutlet weak var topNotesText: UITextField!
    @IBOutlet weak var topHeightText: UITextField!
    @IBOutlet weak var topFeelText: UITextField!
    @IBOutlet weak var topGradeText: UITextField!
    @IBOutlet weak var topWhereText: UITextField!
    
    @IBAction func topSaveBtn(_ sender: UIButton) {
    }
    
    @IBOutlet weak var bouldWhereText: UITextField!
    @IBOutlet weak var boulderWhereText: UITextField!
    @IBOutlet weak var boulderFeelText: UITextField!
    @IBOutlet weak var boulderTiltText: UITextField!
    @IBOutlet weak var boulderNotesText: UITextField!
    
    @IBAction func boulderSaveBtn(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
