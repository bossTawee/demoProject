//
//  PromotionListPromotionTableViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 10/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class PromotionListPromotionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var promotionName: UILabel!
    @IBOutlet weak var promotionStartDate: UILabel!
    @IBOutlet weak var promotionEndDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
