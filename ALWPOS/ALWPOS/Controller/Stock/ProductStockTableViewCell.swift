//
//  ProductStockTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 11/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ProductStockTableViewCell: UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var pricePerUnitLabel: UILabel!
    @IBOutlet weak var pricePerTaxLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var taxCostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
