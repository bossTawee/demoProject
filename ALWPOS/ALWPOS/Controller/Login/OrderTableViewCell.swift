//
//  OrderTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 4/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func uiInitCell(_ order: menuArray) {
        nameLabel.text = order.name
    }

}
