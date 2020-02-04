//
//  VatTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 8/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class VatTableViewCell: UITableViewCell {

    @IBOutlet weak var vatLabel: UILabel!
    @IBOutlet weak var calLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
