//
//  InfomationMemberViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 31/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class InfomationMemberViewController: UIViewController {
    
    //MARK: instance
    var statusTest: Bool?
    let cellId = "cell"
    let viewCon: [UIViewController] = [AddressMenberViewController(), PurchaseHistoryViewController() , PointHistoryViewController()]
    
    //MARK: outlet
    lazy var menuBarView: Menubar = {
        let view = Menubar()
//        view.infoViewController = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var infoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.0)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "MEMBER"
        view.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.0)
        infoCollectionView.delegate = self
        infoCollectionView.dataSource = self
        infoCollectionView.showsHorizontalScrollIndicator = false
        infoCollectionView.register(InfoMemberCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        setupView()
    }
    
    //MARK: func
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        menuBarView.barLeftAnchorContraint?.constant = scrollView.contentOffset.x / 3
    }
    
    func scrollToMenuIndex(menuIndex: Int) {
        let indexPaths = NSIndexPath(item: menuIndex, section: 0) 
        infoCollectionView.scrollToItem(at: indexPaths as IndexPath, at: .centeredHorizontally, animated: true)
       }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.move().x / view.frame.width
        let indexPathes = NSIndexPath(item: Int(index), section: 0)
        menuBarView.barMenuCollectionView.selectItem(at: indexPathes as IndexPath, animated: true,
                                                     scrollPosition: .centeredHorizontally)
    }
    
    func setupView() {
        if let flowLayout = infoCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
        }
        
        view.addSubview(menuBarView)
        let top = (self.navigationController?.navigationBar.frame.height)! + 20
        let tabbarBottom = self.tabBarController?.tabBar.frame.height
        view.addSubview(menuBarView)
        menuBarView.anchor(top: view.topAnchor, leading: view.leadingAnchor,
                           trailing: view.trailingAnchor, bottom: nil,
                           padding: .init(top: top, left: 0, bottom: 0, right: 0),
                           size: .init(width: 0, height: 62))
        
        view.addSubview(infoCollectionView)
        infoCollectionView.anchor(top: menuBarView.bottomAnchor, leading: view.leadingAnchor,
                                  trailing: view.trailingAnchor, bottom: view.bottomAnchor,
                                  padding: .init(top: 0, left: 0, bottom: tabbarBottom!, right: 0),
                                  size: .init(width: view.frame.width, height: view.frame.height - 62))
        infoCollectionView.isPagingEnabled = true
        
    }
    
}
//MARK: extension
extension InfomationMemberViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewCon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = infoCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! InfoMemberCollectionViewCell
        cell.checkState = statusTest
        cell.initCell(vc: viewCon[indexPath.row])
//        cell.tryIniti(index: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
}
