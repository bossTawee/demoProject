//
//  ManagePromotionViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 25/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit
struct promotiontArray {
    var name = String()
    var start = String()
    var end = String()
}
struct promotiontDetailArray {
    var name = String()
    var start = String()
    var end = String()
}
class ManagePromotionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var promotion = [promotiontArray]()
    var promotionDetail = [promotiontDetailArray]()
    var data = promotiontDetailArray()
    var name: String?
    
    @IBOutlet weak var mainView: UIView!{
        didSet{
            mainView.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var promotionTableView: UITableView!
    @IBOutlet weak var promotionDetailTableView: UITableView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        promotion = [
            promotiontArray(name: "ซื้อครั้งแรก", start: "20/04/2019", end: "20/04/2020"),
            promotiontArray(name: "สมาชิกใหม่", start: "20/04/2019", end: "20/04/2020"),
            promotiontArray(name: "ฉลองเปิดสาขาใหม่", start: "20/04/2019", end: "20/04/2020"),
            promotiontArray(name: "ฉลองครบรอบ เปิดร้าน", start: "20/04/2019", end: "20/04/2020"),
            promotiontArray(name: "ซื้อ 1 แถม 1", start: "20/04/2019", end: "20/04/2020"),
            promotiontArray(name: "แลกซื้อ", start: "20/04/2019", end: "20/04/2020"),
        ]
        
        borderRadius(button: submitButton)
        borderCancelRadius(button: cancelButton)
        promotionTableView.delegate = self
        promotionTableView.dataSource = self
        promotionTableView.rowHeight = 52.0
        promotionDetailTableView.delegate = self
        promotionDetailTableView.dataSource = self
        promotionDetailTableView.rowHeight = 52.0
        
        productLabel.text = name
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submitButtonTapped(_ sender: Any) {
        if data.name != " " {
            promotionDetail.append(data)
            promotionDetailTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == promotionTableView{
            return promotion.count
        } else {
            return promotionDetail.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == promotionTableView{
            let cell = promotionTableView.dequeueReusableCell(withIdentifier: "promotionList", for: indexPath) as? PromotionListPromotionTableViewCell
            cell?.promotionName.text = promotion[indexPath.row].name
            cell?.promotionStartDate.text = promotion[indexPath.row].start
            cell?.promotionEndDate.text = promotion[indexPath.row].end
            return cell!
        } else {
            let cell = promotionDetailTableView.dequeueReusableCell(withIdentifier: "promotionDetail", for: indexPath) as? PromotionDetailTableViewCell
            cell?.promotionDetailName.text = promotionDetail[indexPath.row].name
            cell?.promotionDetailStartDate.text = promotionDetail[indexPath.row].start
            cell?.promotionDetailEndDate.text = promotionDetail[indexPath.row].end
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        data = promotiontDetailArray(name: promotion[indexPath.row].name, start: promotion[indexPath.row].start, end: promotion[indexPath.row].end)
    }
    
    func borderRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
    func borderCancelRadius(button: UIButton){
        button.layer.cornerRadius = 20
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
