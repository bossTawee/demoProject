//
//  ListReceiveStockTableViewCell.swift
//  ALWPOS
//
//  Created by Hive on 10/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ListReceiveStockTableViewCell: UITableViewCell {

    var onAddButton: (() -> Void)? = nil
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var reportLabel: UILabel!
    @IBOutlet weak var vendorLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func editBtnTap(_ sender: Any) {
        if let onAddButton = self.onAddButton {
            onAddButton()
        }
    }
}
