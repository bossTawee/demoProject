//
//  PromotionViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 9/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class PromotionViewController: UIViewController {

    @IBOutlet weak var tabbarPromotionView: UIView!
    @IBOutlet weak var promotionView: UIView!
    @IBOutlet weak var promotionButton: UIButton!
    @IBOutlet weak var collectPointButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "โปรโมชั่น")
        collectPointButton.setTitleColor(.gray, for: .normal)
        collectPointButton.backgroundColor = .lightGray
        presentPromotionView()
    }
    
    @IBAction func promotionButtonTapped(_ sender: Any) {
        presentPromotionView()
    }
    @IBAction func collectPointButtonTapped(_ sender: Any) {
        presentCollectPointView()
    }
    
    func presentPromotionView(){
        promotionButton.setTitleColor(.black, for: .normal)
        promotionButton.backgroundColor = .white
        collectPointButton.backgroundColor = .lightGray
        collectPointButton.setTitleColor(.white, for: .normal)
        let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "promotionView") as! ViewPromotionViewController
        let mainView = CGRect(x: 0, y: 0, width: promotionView.bounds.width, height: promotionView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.promotionView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func presentCollectPointView(){
        promotionButton.setTitleColor(.white, for: .normal)
        promotionButton.backgroundColor = .lightGray
        collectPointButton.backgroundColor = .white
        collectPointButton.setTitleColor(.black, for: .normal)
        let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "collectPointView") as! ViewCollectPointViewController
        let mainView = CGRect(x: 0, y: 0, width: promotionView.bounds.width, height: promotionView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.promotionView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
}
