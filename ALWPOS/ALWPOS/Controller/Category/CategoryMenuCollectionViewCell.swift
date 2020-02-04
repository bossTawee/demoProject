//
//  CategoryMenuCollectionViewCell.swift
//  ALWPOS
//
//  Created by Hive Dev on 5/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class CategoryMenuCollectionViewCell: UICollectionViewCell {
    var funcCategoryTapped : (() -> Void)? = nil
    
    @IBOutlet weak var categoryMenuImageView: UIImageView!{
        didSet{
            categoryMenuImageView.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var categoryMenuNameLabel: UILabel!
    
    func uiInitCategoryMenuView(category: CategoryDTO) {
        self.categoryMenuImageView.image = UIImage(named: category.categoryImage!)
        self.categoryMenuNameLabel.text = category.categoryName
    }

}
