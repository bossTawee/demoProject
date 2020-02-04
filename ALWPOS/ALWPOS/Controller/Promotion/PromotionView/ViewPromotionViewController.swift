//
//  ViewPromotionViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 9/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class ViewPromotionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var product = [productArray]()
    
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var productCategoryButton: UIButton!{
        didSet {
            self.productCategoryButton.layer.cornerRadius = 10
            self.productCategoryButton.layer.borderWidth = 1
            self.productCategoryButton.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    @IBOutlet weak var managePromotionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        product = [
            productArray(code: "00000001", name: "ปลากระป๋อง", price: "0.00", number: "0"),
            productArray(code: "00000002", name: "น้ำอัดลม", price: "0.00", number: "0"),
            productArray(code: "00000003", name: "น้ำตาล", price: "0.00", number: "0"),
            productArray(code: "00000004", name: "ชานม", price: "0.00", number: "0"),
            productArray(code: "00000005", name: "ลูกชิ้น", price: "0.00", number: "0"),
        ]
        productTableView.delegate = self
        productTableView.dataSource = self
        productTableView.rowHeight = 52.0
        
        buttonCornerRadius(button: managePromotionButton)
    }
    
    @IBAction func productCategoryButtonTapped(_ sender: Any) {
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "popupSelected") as? PopupSelectProductViewController {
            vc.page = "category"
            if let navigator = navigationController {
                navigator.present(vc, animated: true)
            }
        }
    }
    
    @IBAction func managePromotionButtonTapped(_ sender: Any) {
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "createPromotion") as? PopupCreatePromotionViewController {
            if let navigator = navigationController {
                navigator.present(vc, animated: true)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: "promotionProductList", for: indexPath) as? PromotionProductTableViewCell
        cell?.productCodeLabel.text = product[indexPath.row].code
        cell?.productNameLabel.text = product[indexPath.row].name
        cell?.manageBtn = {
            self.popupManagePromotion(name: self.product[indexPath.row].name)
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "ลบ") { (action, view, nil) in
            print("delete")
            self.product.remove(at: indexPath.row)
            self.productTableView.reloadData()
        }
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    func popupManagePromotion(name: String){
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "managePromotion") as? ManagePromotionViewController {
            vc.name = name
            if let navigator = navigationController {
                navigator.pushViewController(vc, animated: true)
                //navigator.present(vc, animated: true)
            }
        }
    }
    
    func buttonCornerRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
}
