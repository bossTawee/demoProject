//
//  PromotionProductTableViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 10/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class PromotionProductTableViewCell: UITableViewCell {
    var manageBtn: (() -> Void)? = nil
    
    @IBOutlet weak var productCodeLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var managePromotionButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func managePromotionButtonTapped(_ sender: Any) {
    }
    
    @IBAction func manageButtonTapped(_ sender: Any) {
        if let manageBtn = self.manageBtn {
            manageBtn()
        }
    }
}
