//
//  ListUserTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 4k on 22/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ListUserTableViewCell: UITableViewCell {

    @IBOutlet weak var userCodeLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
