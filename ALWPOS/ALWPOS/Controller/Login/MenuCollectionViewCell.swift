//
//  MenuCollectionViewCell.swift
//  ALWPOS
//
//  Created by Hive on 4/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func uiInitCell(_ menu: menuArray) {
        nameLabel.text = menu.name
        image.image = UIImage(named: menu.image)
    }
}
