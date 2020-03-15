//
//  ClimbingViewController.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-09.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase

class ClimbingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var climbTableView: UITableView!
    
    var climbs = [Climbs]()
    //var climbList = [LogTraning2ViewController]()
    var climbInfoRef: CollectionReference!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return climbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
       if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ClimbingCellTableViewCell {
        cell.configureCell(climb: climbs [indexPath.row])
        return cell
       } else {
        return ClimbingCellTableViewCell()
        }
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        climbTableView.delegate = self
        climbTableView.dataSource = self
        
        climbInfoRef = Firestore.firestore().collection("climbs")
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        climbInfoRef.getDocuments { (snapshot, error) in
            if let err = error {
                print("Error fetching data from firebase")
            } else {
                guard let snap = snapshot else {return}
                for document in snap.documents {
                    let data = document.data()
                    let location = data["location"] as? String ?? ""
                    let duration = data["duration"] as? String ?? ""
                    let notes = data["notes"] as? String ?? ""
                    let typeOfClimb = data["type of climb"] as? String ?? ""
                    let grade = data["grade"] as? String ?? ""
                    print(document.data())
                    
                    let newClimb = Climbs(location: location, grade: grade, typeOfClimb: typeOfClimb, duration: duration, notes: notes)
                    self.climbs.append(newClimb)
                    
                }
                self.climbTableView.reloadData()
            }
        }
        
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
