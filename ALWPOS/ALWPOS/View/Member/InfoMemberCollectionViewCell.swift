//
//  InfoMemberCollectionViewCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 4/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class InfoMemberCollectionViewCell: UICollectionViewCell {
    
//    let vc1 = AddressMenberViewController()
//    let vc2 = PurchaseHistoryViewController()
//    let vc3 = PointHistoryViewController()
    var checkState: Bool?
    

    override init(frame: CGRect) {
        super.init(frame: frame)
//        setupView()
    }
    
    func initCell(vc: UIViewController){
        
        initView(vc: vc)
//        NotificationCenter.default.post(name: .create, object: nil)
        print("statusTest\(String(describing: checkState))")
    }
    
    func initView(vc: UIViewController) {
        let width = contentView.bounds.width
        let height = contentView.bounds.height
        let frames = CGRect(x: 0, y: 0, width: width, height: height)
        vc.view.frame = frames
        contentView.addSubview(vc.view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
