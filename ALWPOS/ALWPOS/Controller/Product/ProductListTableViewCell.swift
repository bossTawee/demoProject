//
//  ProductListTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 5/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {

    @IBOutlet weak var codeProductLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func uiInitCell(_ item: productArray) {
        codeProductLabel.text = item.code
        productNameLabel.text = item.name
        productPriceLabel.text = item.price
        productNumberLabel.text = item.number
    }

}
