//
//  MyCell.swift
//  ass4
//
//  Created by Andrew Stepien on 4/18/16.
//  Copyright © 2016 Andrew Stepien. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        switch1.setOn(false, animated: false)
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
