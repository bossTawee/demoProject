//
//  ListWithDrawProductStockTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 23/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ListWithDrawProductStockTableViewCell: UITableViewCell {

    @IBOutlet weak var codeProductLabel: UILabel!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var unitProductLabel: UILabel!
    @IBOutlet weak var costUnitLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var totalCostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
