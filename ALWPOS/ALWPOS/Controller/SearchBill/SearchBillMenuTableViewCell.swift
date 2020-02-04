//
//  SearchBillMenuTableViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 7/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class SearchBillMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var orderName: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderSumLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
