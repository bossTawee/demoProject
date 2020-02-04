//
//  OrderViewController.swift
//  ALWPOS
//
//  Created by Hive on 4/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit
struct menuArray {
    var name = String()
    var image = String()
}
class OrderViewController: UIViewController {
    
    var popupTitle = String()
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var categoryCollectioView: UICollectionView!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var orderTableView: UITableView!
    
    var searchActive = false
    var searching = false
    var menu = [menuArray]()
    var searchMenu = [menuArray]()
    var orderList = [menuArray]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarItem(titlePageName: "ขายสินค้า")
        
        searchBar.autocapitalizationType = .none
        let textFieldSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldSearchBar?.font = UIFont(name: "kanit", size: 14.0)
        categoryCollectioView.delegate = self
        categoryCollectioView.dataSource =  self
        menuCollectionView.delegate = self
        menuCollectionView.dataSource = self
        orderTableView.rowHeight = 52.0
        orderTableView.delegate = self
        orderTableView.dataSource = self
        searchBar.delegate = self
        //DataMock
        menu = [
            menuArray(name: "pork", image: "Logo_App.png"),
            menuArray(name: "chicken", image: "Logo_Apppng"),
            menuArray(name: "fish", image: "Logo_App.png"),
            menuArray(name: "break", image: "Logo_App.png"),
            menuArray(name: "egg", image: "Logo_App.png"),
            menuArray(name: "water", image: "Logo_App.png"),
            menuArray(name: "coffee", image: "Logo_App.png"),
            menuArray(name: "burger", image: "Logo_App.png"),
            menuArray(name: "steak", image: "Logo_App.png"),
            menuArray(name: "firerice", image: "Logo_App.png"),
            menuArray(name: "cola", image: "Logo_App.png")
        ]

    }
    
    func getListOrder(_ menu: menuArray) {
        orderList.append(menu)
        orderTableView.reloadData()
    }
    
    func loadPopupView() {
        let sb = UIStoryboard(name: "Order", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "popup") as! OrderPopupViewController
        vc.titleStr = self.popupTitle
        present(vc, animated: true, completion: nil)
    }
    
    func loadPaymentPopup() {
        let sb = UIStoryboard(name: "Order", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "payment") as! PaymentPopupViewController
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func paymentBtnTap(_ sender: Any) {
        loadPaymentPopup()
    }
    
    @IBAction func discountBathBtnTap(_ sender: Any) {
        self.popupTitle = "ส่วนลด฿"
        loadPopupView()
    }
    
    @IBAction func discountPercentBtnTap(_ sender: Any) {
        self.popupTitle = "ส่วนลด%"
        loadPopupView()
    }
    
    @IBAction func numberBtnTap(_ sender: Any) {
        self.popupTitle = "จำนวน"
        loadPopupView()
    }
    
    @IBAction func cancelOrderBtnTap(_ sender: Any) {
    }
    
    @IBAction func checkTotalDailyBtnTap(_ sender: Any) {
        
    }
    
    @IBAction func expensesBtnTap(_ sender: Any) {
    }
    

}

extension OrderViewController: UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = orderTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrderTableViewCell
        cell.selectionStyle = .none
        cell.uiInitCell(orderList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoryCollectioView {
            return 8
        } else {
            if searching == true {
                return searchMenu.count
            } else {
                return menu.count
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoryCollectioView {
            let cell = categoryCollectioView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell
            cell.nameLabel.text = "category\(indexPath.row)"
            return cell
        } else {
            let cell = menuCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
            if searching == true {
                cell.nameLabel.text = self.searchMenu[indexPath.row].name
            } else {
                cell.nameLabel.text = self.menu[indexPath.row].name
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == menuCollectionView {
            if searching {
                print(searchMenu[indexPath.row].name)
                self.getListOrder(searchMenu[indexPath.row])
            } else {
                print(menu[indexPath.row].name)
                self.getListOrder(menu[indexPath.row])
            }
        }
    }
}

extension OrderViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchMenu = menu.filter({$0.name.prefix(searchText.count) == searchText})
        searching = true
        if(searchMenu.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.menuCollectionView.reloadData()
    }
}
