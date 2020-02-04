//
//  ViewCollectPointViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 9/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class ViewCollectPointViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var product = [productArray]()
    
    @IBOutlet weak var categoryButton: UIButton!{
        didSet {
            self.categoryButton.layer.cornerRadius = 10
            self.categoryButton.layer.borderWidth = 1
            self.categoryButton.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    @IBOutlet weak var createPointButton: UIButton!
    @IBOutlet weak var productTableView: UITableView!
    
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
        
        buttonCornerRadius(button: createPointButton)
    }
    
    @IBAction func categoryButtonTapped(_ sender: Any) {
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "popupSelected") as? PopupSelectProductViewController {
            vc.page = "category"
            if let navigator = navigationController {
                navigator.present(vc, animated: true)
            }
        }
    }
    
    @IBAction func createPointButtonTapped(_ sender: Any) {
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "createPoint") as? CreatePointViewController {
            if let navigator = navigationController {
                navigator.pushViewController(vc, animated: true)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: "pointProductList", for: indexPath) as? PointProductTableViewCell
        cell?.productCodeLabel.text = product[indexPath.row].code
        cell?.productNameLabel.text = product[indexPath.row].name
        cell?.manageBtn = {
            self.popupManagePoint(name: self.product[indexPath.row].name)
        }
        return cell!
    }
    
    func popupManagePoint(name: String){
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "managePoint") as? ManagePointViewController {
            vc.name = name
            if let navigator = navigationController {
                navigator.present(vc, animated: true)
            }
        }
    }
    
    func buttonCornerRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
