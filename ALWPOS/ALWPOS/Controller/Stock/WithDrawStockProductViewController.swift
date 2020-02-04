//
//  WithDrawStockProductViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 23/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class WithDrawStockProductViewController: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet weak var codeProductTextField: UITextField!
    @IBOutlet weak var unitCostTextField: UITextField!
    @IBOutlet weak var numberProductTextField: UITextField!
    @IBOutlet weak var numberStockProductTextField: UITextField!
    @IBOutlet weak var totalCostTextField: UITextField!
    
    @IBOutlet weak var nameProductButton: UIButton!
    @IBOutlet weak var unitNameButton: UIButton!
    @IBOutlet weak var addProductButton: UIButton!
    
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        nameProductButton.borderButton()
        unitNameButton.borderButton()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //MARK: - func
    
    //MARK: - @IBAction
    @IBAction func nameProductBtnTap(_ sender: Any) {
        
    }
    @IBAction func unitNameBtnTap(_ sender: Any) {
        
    }
    @IBAction func addProductBtnTap(_ sender: Any) {
        
    }
    @IBAction func addInfoBtnTap(_ sender: Any) {
        
    }
    @IBAction func deleteInfoBtnTap(_ sender: Any) {
        
    }
    @IBAction func saveInfoBtnTap(_ sender: Any) {
        
    }
    

}
extension WithDrawStockProductViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListWithDrawProductStockTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
    
}
