//
//  SearchBillTableViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 7/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class SearchBillTableViewCell: UITableViewCell {

    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var paymentType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
