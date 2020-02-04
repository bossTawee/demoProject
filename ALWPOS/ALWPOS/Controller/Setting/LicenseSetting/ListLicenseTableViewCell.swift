//
//  ListLicenseTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 4k on 22/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ListLicenseTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var licenseNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
