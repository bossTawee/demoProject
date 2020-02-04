//
//  DetailProductStockViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 22/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class DetailProductStockViewController: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet weak var codeProductTextField: UITextField!
    @IBOutlet weak var nameProductTextField: UITextField!
    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var costTaxTextField: UITextField!
    @IBOutlet weak var receiveNumberTextField: UITextField!
    @IBOutlet weak var stockNumberTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var costIncludeTaxTextField: UITextField!
    
    @IBOutlet weak var selectUnitButton: UIButton!
    @IBOutlet weak var addProductButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var includeTaxTotalPriceUILabel: UILabel!
    
    @IBOutlet weak var tabeleView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabeleView.delegate = self
        tabeleView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //MARK: - func
    
    
    //MARK: - @IBAction
    @IBAction func selectUnitBtnTap(_ sender: Any) {
        
    }
    @IBAction func addProductButtonTap(_ sender: Any) {
        
    }
    @IBAction func deleteButtonTap(_ sender: Any) {
        
    }
    @IBAction func saveButtonTap(_ sender: Any) {
        
    }
    @IBAction func addButtonTap(_ sender: Any) {
        
    }
    
    
    //MARK: - ui
    

}

extension DetailProductStockViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductStockTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
    
}
