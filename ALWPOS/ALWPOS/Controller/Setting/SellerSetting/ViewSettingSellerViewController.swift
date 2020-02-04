//
//  ViewSettingSellerViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingSellerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextViewDelegate {

    @IBOutlet weak var listSellerTableView: UITableView!
    @IBOutlet weak var sellerSearchBar: UISearchBar!
    @IBOutlet weak var sellerCodeTextField: UITextField!
    @IBOutlet weak var sellerNameTextField: UITextField!
    @IBOutlet weak var addressTextView: UITextView!{
        didSet {
            addressTextView.layer.borderWidth = 1
            addressTextView.layer.borderColor = UIColor(red:0.8, green:0.8, blue:0.8, alpha:0.5).cgColor
            addressTextView.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var paymentButton: UIButton!
    @IBOutlet weak var addedButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        listSellerTableView.rowHeight = 52.0
        listSellerTableView.dataSource = self
        listSellerTableView.delegate = self
        addressTextView.delegate = self
    }
    @IBAction func paymentButtonTapped(_ sender: Any) {
    }
    @IBAction func addedButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listSellerTableView.dequeueReusableCell(withIdentifier: "listSellerSetting", for: indexPath) as? ListSellerSettingTableViewCell
        cell?.sellerCodeLabel.text = "\(indexPath.row)"
        cell?.sellerNameLabel.text = "\(indexPath.row)"
        return cell!
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
