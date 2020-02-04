//
//  UnitTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 8/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class UnitTableViewCell: UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var calculateNumLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
