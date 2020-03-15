//
//  ClimbingCellTableViewCell.swift
//  projectClimbing
//
//  Created by Anton Lindgren on 2020-03-12.
//  Copyright © 2020 Anton Lindgren. All rights reserved.
//

import UIKit

class ClimbingCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeOfClimbLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var notesTextField: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(climb:Climbs) {
        locationLabel.text = climb.location
        typeOfClimbLabel.text = climb.typeOfClimb
        gradeLabel.text = climb.grade
        notesTextField.text = climb.notes
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
