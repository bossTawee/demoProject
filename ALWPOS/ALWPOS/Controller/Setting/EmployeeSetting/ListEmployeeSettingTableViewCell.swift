//
//  ListEmployeeSettingTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 4k on 23/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ListEmployeeSettingTableViewCell: UITableViewCell {

    @IBOutlet weak var employeeCodeLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    @IBOutlet weak var employeePositionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
