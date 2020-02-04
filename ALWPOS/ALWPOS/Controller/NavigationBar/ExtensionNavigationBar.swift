//
//  ExtensionNavigationBar.swift
//  ALWPOS
//
//  Created by Hive Dev on 5/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

extension UIViewController{
    
    //MARK: - CustomNavigation
    
    func setNavigationBarItem(titlePageName: String!) {
        setupRemainingItem()
        setupRightNavItem()
        setupLeftNavItem(title: titlePageName!)
    }
    
    func setupRemainingItem() {
        let label = UIImageView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        navigationItem.titleView = label
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    func setupLeftNavItem(title: String!) {
        let logoImage = UIImage.init(named: "Icon_Logo_Tabbar.png")
        let logoImageView = UIImageView.init(image: logoImage)
        logoImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        logoImageView.contentMode = .redraw
        let imageItem = UIBarButtonItem.init(customView: logoImageView)
        //        let negativeSpacer = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        //        negativeSpacer.width = -25
        
        let separatorLine = UIView()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 2, height: 30)
        separatorLine.backgroundColor = .black
        let separatorLineUIView = UIBarButtonItem.init(customView: separatorLine)
        
        let titlelabel = UILabel()
        titlelabel.text = title!
        titlelabel.textColor = .black
        titlelabel.font = UIFont(name:"Kanit", size: 20)
        let titleLabelUIView = UIBarButtonItem.init(customView: titlelabel)
        
        navigationItem.leftBarButtonItems = [imageItem, separatorLineUIView, titleLabelUIView]
    }
    
    func setupRightNavItem() {
        let settingButtonViewRect:CGRect = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 75, height: 34))
        let settingButtonView:UIView = UIView.init(frame: settingButtonViewRect)
        let settingButton = UIButton(type: .system)
        settingButton.setImage(UIImage(named: "icon_Setting.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        settingButton.frame = CGRect(x: 0, y: 0, width: 75, height: 34)
        //settingButton.backgroundColor = .red
        settingButton.titleEdgeInsets.right = -15
        settingButton.setTitle("ตั้งค่า", for: .normal)
        settingButton.setTitleColor(.black, for: .normal)
        settingButton.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        settingButton.semanticContentAttribute = .forceLeftToRight
        settingButton.contentMode = .scaleAspectFit
        settingButton.addTarget(self, action: #selector(settingPage), for: .touchUpInside)
        settingButtonView.addSubview(settingButton)
        
        let promotionButtonViewRect:CGRect = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 75, height: 34))
        let promotionButtonView:UIView = UIView.init(frame: promotionButtonViewRect)
        let promotionButton = UIButton(type: .system)
        promotionButton.setImage(UIImage(named: "icon_Promotion.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        promotionButton.frame = CGRect(x: 0, y: 0, width: 75, height: 34)
        //settingButton.backgroundColor = .red
        promotionButton.titleEdgeInsets.right = -15
        promotionButton.setTitle("โปรโมชั่น", for: .normal)
        promotionButton.setTitleColor(.black, for: .normal)
        promotionButton.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        promotionButton.semanticContentAttribute = .forceLeftToRight
        promotionButton.contentMode = .scaleAspectFit
        promotionButton.addTarget(self, action: #selector(settingPage), for: .touchUpInside)
        promotionButtonView.addSubview(promotionButton)
        
        let closeShiftButtonViewRect:CGRect = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 90, height: 34))
        let closeShiftButtonView:UIView = UIView.init(frame: closeShiftButtonViewRect)
        let closeShiftButton = UIButton(type: .system)
        closeShiftButton.setImage(UIImage(named: "Icon_CloseShift.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        closeShiftButton.frame = CGRect(x: 0, y: 0, width: 90, height: 34)
        //closeShiftButton.backgroundColor = .green
        closeShiftButton.titleEdgeInsets.right = -15
        closeShiftButton.setTitle("ปิดกะ", for: .normal)
        closeShiftButton.setTitleColor(.red, for: .normal)
        closeShiftButton.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        closeShiftButton.semanticContentAttribute = .forceLeftToRight
        closeShiftButton.contentMode = .scaleAspectFit
        //notificationButton.addTarget(self, action: #selector(notificationButtonItemClicked), for: .touchUpInside)
        closeShiftButtonView.addSubview(closeShiftButton)
        
        let userButtonViewRect:CGRect = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 150, height: 34))
        let userButtonView:UIView = UIView.init(frame: userButtonViewRect)
        let userButton = UIButton(type: .system)
        userButton.setImage(UIImage(named: "icon_logout.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        userButton.frame = CGRect(x: 0, y: 0, width: 150, height: 34)
        userButton.titleEdgeInsets.right = 10
        userButton.setTitle("Admin", for: .normal)
        userButton.setTitleColor(.black, for: .normal)
        userButton.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        userButton.semanticContentAttribute = .forceRightToLeft
        userButton.contentHorizontalAlignment = .right
        //userButton.addTarget(self, action: #selector(optionAppButton), for: .touchUpInside)
        userButtonView.addSubview(userButton)

//        if (brandName != "") {
//            let branchButton = BrandTitleButtonNavigationBarCustom(frame: CGRect(x: 0, y: 0, width: 150, height: 34))
//            if (brandImageUrl != "") {
//                branchButton.frame.size = CGSize(width: 150, height: 34)
//                if (branchName != "") {
//                    branchButton.brandNameLabel.text = brandName
//                    branchButton.branchNameLabel.text = branchName
//                } else {
//                    branchButton.brandNameLabel.text = brandName
//                    branchButton.branchNameLabel.text = "ทั้งหมด"
//                }
//                let url = URL(string: brandImageUrl)
//                branchButton.brandImageView.kf.setImage(with: url)
//                branchButton.manageBrandButton.addTarget(self, action: #selector(brachButtonTabpped), for: .touchUpInside)
//            } else {
//                branchButton.frame.size = CGSize(width: 150, height: 34)
//                if (branchName.count) >= 1 {
//                    branchButton.brandNameLabel.text = brandName
//                    branchButton.branchNameLabel.text = branchName
//                } else {
//                    branchButton.brandNameLabel.text = brandName
//                    branchButton.branchNameLabel.text = "ทั้งหมด"
//                }
//                branchButton.brandImageView.image = UIImage(named: "defaultBrandNavigationBar.png")
//                branchButton.manageBrandButton.addTarget(self, action: #selector(brachButtonTabpped), for: .touchUpInside)
//            }
            navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: settingButtonView), UIBarButtonItem(customView: closeShiftButtonView), UIBarButtonItem(customView: userButtonView)]
    }
    
    @objc func settingPage() {
        print("gotosetting")
//        if let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "setting") as? SettingViewController {
//            if let navigator = navigationController {
//                navigator.pushViewController(vc, animated: true)
//            }
//        }
    }

}
