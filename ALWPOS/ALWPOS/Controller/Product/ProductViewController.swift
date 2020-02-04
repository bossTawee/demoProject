//
//  ProductViewController.swift
//  ALWPOS
//
//  Created by Hive on 5/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit
struct categoryDTO {
    var name = String()
}
struct productArray {
    var code = String()
    var name = String()
    var price = String()
    var number = String()
}
class ProductViewController: UIViewController {
    
    var categoryState = false
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var leftView: UIView!
    
    @IBOutlet weak var categoryButton: UIButton! {
        didSet {
            self.categoryButton.layer.cornerRadius = 10
            self.categoryButton.layer.borderWidth = 1
            self.categoryButton.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    @IBOutlet weak var settingProductBtn: UIButton!
    @IBOutlet weak var materialBtn: UIButton!
    @IBOutlet weak var toppingBtn: UIButton!
    @IBOutlet weak var optionBtn: UIButton!
    @IBOutlet weak var promotionBtn: UIButton!
    @IBOutlet weak var collectionPointBtn: UIButton!
    
    var tableView = UITableView()
    var category = [categoryDTO]()
    var product = [productArray]()
    var productSearch = [productArray]()
    var searchActive = false
    var searching = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "สินค้า")
        searchBar.autocapitalizationType = .none
        let textFieldSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldSearchBar?.font = UIFont(name: "kanit", size: 14.0)
        productTableView.rowHeight = 52.0
        productTableView.delegate = self
        productTableView.dataSource = self
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        for i in 0...9 {
            var item = productArray()
            item.code = "\(i)"
            item.name = "product_\(i)"
            item.price = "1\(i).00"
            item.number = "1\(i)"
            product.append(item)
        }
        category = [
            categoryDTO(name: "food"),
            categoryDTO(name: "soft drink"),
            categoryDTO(name: "snack"),
            categoryDTO(name: "milk tea"),
            categoryDTO(name: "ice cream"),
            categoryDTO(name: "cake"),
            categoryDTO(name: "coffee")
        ]
    }
    
    func addTransprentView(frames: CGRect) {
        
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.leftView.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        tableView.layer.borderWidth = 1
        tableView.layer.borderColor = UIColor.lightGray.cgColor
        tableView.reloadData()
        
        self.leftView.bringSubviewToFront(tableView)
        
//        let tapgestrue = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
//        self.leftView.addGestureRecognizer(tapgestrue)
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(self.category.count * 50))
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = categoryButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @IBAction func categoryBtnTap(_ sender: Any) {
        self.categoryState = !categoryState
        
        if categoryState {
            addTransprentView(frames: categoryButton.frame)
        } else {
            removeTransparentView()
        }
        
        
    }
    
    @IBAction func settingProductBtnTap(_ sender: Any) {
        let sb = UIStoryboard(name: "Product", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "createProduct") as! CreateProductViewController
        if let navigator = navigationController {
            navigator.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func materialBtnTap(_ sender: Any) {
    }
    
    @IBAction func toppingBtnTap(_ sender: Any) {
    }
    
    @IBAction func optionBtnTap(_ sender: Any) {
    }
    
    @IBAction func promotionBtnTap(_ sender: Any) {
    }
    
    @IBAction func collectionPointBtnTap(_ sender: Any) {
    }

}
extension ProductViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
            return category.count
        } else {
            if searching {
                return productSearch.count
            } else {
                return product.count
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.tableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = category[indexPath.row].name
            return cell
        } else {
            let cell = productTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductListTableViewCell
            cell.selectionStyle = .none
            if searching {
                cell.uiInitCell(productSearch[indexPath.row])
            } else {
                cell.uiInitCell(product[indexPath.row])
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.categoryState = !categoryState
        if tableView == self.tableView {
            print(category[indexPath.row].name)
            categoryButton.setTitle(category[indexPath.row].name, for: .normal)
            removeTransparentView()
        }
    }
}
extension ProductViewController: UISearchBarDelegate {
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
        productSearch = product.filter({$0.name.prefix(searchText.count) == searchText})
        searching = true
        if(productSearch.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.productTableView.reloadData()
    }
}
