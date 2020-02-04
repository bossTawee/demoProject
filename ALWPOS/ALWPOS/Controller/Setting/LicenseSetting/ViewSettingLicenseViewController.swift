//
//  ViewSettingLicenseViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingLicenseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var licenseNameTextField: UITextField!
    @IBOutlet weak var addedButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var listLicenseTableView: UITableView!
    @IBOutlet weak var listTypeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listLicenseTableView.rowHeight = 52.0
        listLicenseTableView.dataSource = self
        listLicenseTableView.delegate = self
        listTypeTableView.rowHeight = 52.0
        listTypeTableView.dataSource = self
        listTypeTableView.delegate = self
        
    }
    
    @IBAction func addedButtonTapped(_ sender: Any) {
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == listLicenseTableView {
            return 4
        } else {
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == listLicenseTableView {
            let cell = listLicenseTableView.dequeueReusableCell(withIdentifier: "listLicense", for: indexPath) as? ListLicenseTableViewCell
            cell?.numberLabel.text = "\(indexPath.row)"
            cell?.licenseNameLabel.text = "\(indexPath.row)"
            return cell!
        } else {
            let cell = listTypeTableView.dequeueReusableCell(withIdentifier: "listTypeLicense", for: indexPath) as? ListTypeTableViewCell
            cell?.typeNameLabel.text = "\(indexPath.row)"
            return cell!
        }
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
