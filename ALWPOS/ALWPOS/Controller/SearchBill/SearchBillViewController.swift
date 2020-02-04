//
//  SearchBillViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 7/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit
struct billArray {
    var billNo = Int()
    var date = String()
    var sum = Double()
    var type = String()
}
struct billMenuArray {
    var code = Int()
    var name = String()
    var price = Double()
    var sum = Int()
    var totalPrice = Double()
}
class SearchBillViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bill = [billArray]()
    var billMenu = [billMenuArray]()
    
    @IBOutlet weak var searchBillTableView: UITableView!
    @IBOutlet weak var searchBillMenuTableView: UITableView!
    @IBOutlet weak var billSearchBar: UISearchBar!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var cancelBillButton: UIButton!
    @IBOutlet weak var printBillButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "ค้นบิล")
        
        bill = [
            billArray(billNo: 1500001, date: "30/05/2562", sum: 40.00, type: "เงินสด"),
            billArray(billNo: 1500002, date: "30/05/2562", sum: 80.00, type: "เงินสด"),
            billArray(billNo: 1500003, date: "30/05/2562", sum: 200.00, type: "เงินสด")
        ]
        
        
        buttonCornerRadius(button: cancelBillButton)
        buttonCornerRadius(button: printBillButton)
        
        searchBillTableView.rowHeight = 50.0
        searchBillTableView.delegate = self
        searchBillTableView.dataSource = self
        searchBillMenuTableView.rowHeight = 50.0
        searchBillMenuTableView.delegate = self
        searchBillMenuTableView.dataSource = self
    }
    
    @IBAction func cancelBillButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func printBillButtonTapped(_ sender: Any) {
        
    }
    
    func buttonCornerRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == searchBillTableView {
            return bill.count
        } else {
            return billMenu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == searchBillTableView {
            let cell = searchBillTableView.dequeueReusableCell(withIdentifier: "searchBillCell", for: indexPath) as! SearchBillTableViewCell
                cell.billLabel.text = " \(bill[indexPath.row].billNo)"
                cell.dateLabel.text = bill[indexPath.row].date
                cell.totalPriceLabel.text = "\(bill[indexPath.row].sum)"
                cell.paymentType.text = bill[indexPath.row].type
            return cell
        } else {
            let cell = searchBillMenuTableView.dequeueReusableCell(withIdentifier: "searchBillMenuCell", for: indexPath) as! SearchBillMenuTableViewCell
                cell.codeLabel.text = " \(billMenu[indexPath.row].code)"
                cell.orderName.text = billMenu[indexPath.row].name
                cell.priceLabel.text = "\(billMenu[indexPath.row].price)"
                cell.orderSumLabel.text = "\(billMenu[indexPath.row].sum)"
                cell.totalPriceLabel.text = "\(billMenu[indexPath.row].totalPrice)"
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        billMenu = [
            billMenuArray(code: 520001, name: "ชานม", price: 40.00, sum: 1, totalPrice: 40.00)
        ]
        searchBillMenuTableView.reloadData()
    }
}
