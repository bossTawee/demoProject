//
//  Menubar.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 1/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class Menubar: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cell"
    let menuTitle = ["ข้อมูล", "ประวัติการซื้อ", "ประวัติการใช้แต้มสะสม"]
    var barLeftAnchorContraint: NSLayoutConstraint?
//    var infoViewController: InfomationMemberViewController?
    var member: MemberDetailViewController?
    
    lazy var barMenuCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.delegate = self
        cv.dataSource = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    var horizontalBar: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()//        setupHorizontalBar()
    }
    
    func setupView(){
        barMenuCollectionView.register(MenuBarCell.self, forCellWithReuseIdentifier: cellId)
        addSubview(barMenuCollectionView)
        addConstraintWithFormat(format: "H:|[v0]|", views: barMenuCollectionView)
        addConstraintWithFormat(format: "V:|[v0]|", views: barMenuCollectionView)
        
        let selectedIndex = NSIndexPath(item: 0, section: 0)
        barMenuCollectionView.selectItem(at: selectedIndex as IndexPath, animated: true, scrollPosition: .centeredHorizontally)
    }
    
//    func setupHorizontalBar() {
//        addSubview(horizontalBar)
//        barLeftAnchorContraint = horizontalBar.leftAnchor.constraint(equalTo: self.leftAnchor)
//        barLeftAnchorContraint?.isActive = true
//        horizontalBar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        horizontalBar.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3).isActive = true
//        horizontalBar.heightAnchor.constraint(equalToConstant: 4).isActive = true
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = barMenuCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MenuBarCell
        cell.menuLabel.text = menuTitle[indexPath.row]
        cell.backgroundColor = .white
        member?.checkIndex(num: 0)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width/3, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(indexPath.item)
//        let x = CGFloat(indexPath.item) * frame.width/3
//        barLeftAnchorContraint?.constant = x
//        
//        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
//            self.layoutIfNeeded()
//        }, completion: nil)
        
//        infoViewController?.scrollToMenuIndex(menuIndex: indexPath.item)
        member?.checkIndex(num: indexPath.item)
        
    }
}
