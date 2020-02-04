//
//  BranchCollectionViewCell.swift
//  ALWPOS
//
//  Created by iMac 4k on 9/1/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit

class BranchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var branchImageView: UIImageView!
    @IBOutlet weak var branchNameLabel: UILabel!
    @IBOutlet weak var branchDetailLabel: UILabel!
    @IBOutlet weak var editBranchButton: UIButton!
    @IBOutlet weak var enterBranchButton: UIButton!
    @IBOutlet weak var branchView: UIView!
    
    var onSelectLoginBranch: (() -> Void)? = nil
    
    @IBAction func enterBranchButtonTapped(_ sender: Any) {
        if let onSelectLoginBranch = self.onSelectLoginBranch {
            onSelectLoginBranch()
            print("aaa")
        }
    }
    @IBAction func editbranchButtonTapped(_ sender: Any) {
    }
}
