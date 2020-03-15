//
//  Climbs.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-13.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import Foundation
import FirebaseFirestore
import Firebase


protocol DocumentSerializable {
    init?(dictionary:[String:Any])
}


struct Climbs {
    var location:String
    var grade:String
    var typeOfClimb:String
    var duration:String
    var notes:String
    
    var dictoinary:[String:Any]{
        return [
            "location":location, "grade":grade, "typeOfClimb":typeOfClimb, "duration":duration, "notes":notes
        ]
    }
}

/*extension Climbs : DocumentSerializable {
    init?(dictionary: [String : Any]) {
        guard let location = dictionary["location"] as? String,
            let grade = dictionary["grade"] as? String,
            let typeOfClimb = dictionary["typeOfClimb"] as? String,
            let duration = dictionary["duration"] as? String,
            let notes = dictionary["notes"] as? String else {return nil}
        
        self.init(grade: grade, typeOfClimb: typeOfClimb, duration: duration, notes:notes)
}
}*/
