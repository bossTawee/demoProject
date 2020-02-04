//
//  PromotionDetailTableViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 10/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class PromotionDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var promotionDetailName: UILabel!
    @IBOutlet weak var promotionDetailStartDate: UILabel!
    @IBOutlet weak var promotionDetailEndDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
