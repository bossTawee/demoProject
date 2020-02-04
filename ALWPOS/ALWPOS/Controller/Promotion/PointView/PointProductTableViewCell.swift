//
//  PointProductTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 4k on 30/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class PointProductTableViewCell: UITableViewCell {

    var manageBtn: (() -> Void)? = nil
    
    @IBOutlet weak var productCodeLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var managePointButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func managePointButtonTapped(_ sender: Any) {
    }
    
    @IBAction func manageButtonTapped(_ sender: Any) {
        if let manageBtn = self.manageBtn {
            manageBtn()
        }
    }

}
