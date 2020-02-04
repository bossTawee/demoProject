//
//  ViewSettingEmployeeViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingEmployeeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextViewDelegate {

    @IBOutlet weak var listEmployeeSettingTableView: UITableView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var identificationIdTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var genderButton: UIButton!
    @IBOutlet weak var nationalityButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var currentAddressTextView: UITextView!{
        didSet {
            currentAddressTextView.layer.borderWidth = 1
            currentAddressTextView.layer.borderColor = UIColor(red:0.8, green:0.8, blue:0.8, alpha:0.5).cgColor
            currentAddressTextView.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var positionButton: UIButton!
    @IBOutlet weak var wageTextField: UITextField!
    @IBOutlet weak var wageMonthButton: UIButton!
    @IBOutlet weak var categoryEmployeeButton: UIButton!
    @IBOutlet weak var wageExtraTextField: UITextField!
    @IBOutlet weak var wageExtraMonthButton: UIButton!
    @IBOutlet weak var startWorkTextField: UITextField!
    @IBOutlet weak var diligentAllowanceTextField: UITextField!
    @IBOutlet weak var diligentAllowanceMonthButton: UIButton!
    @IBOutlet weak var breakTimeButton: UIButton!
    @IBOutlet weak var workTimeLabel: UILabel!
    @IBOutlet weak var addedButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listEmployeeSettingTableView.rowHeight = 52.0
        listEmployeeSettingTableView.dataSource = self
        listEmployeeSettingTableView.delegate = self
        currentAddressTextView.delegate = self
    }
    
    @IBAction func genderButtonTapped(_ sender: Any) {
    }
    @IBAction func nationalityButtonTapped(_ sender: Any) {
    }
    @IBAction func positionButtonTapped(_ sender: Any) {
    }
    @IBAction func wageMonthButtonTapped(_ sender: Any) {
    }

    @IBAction func categoryEmployeeButtonTapped(_ sender: Any) {
    }
    @IBAction func wageExtraMonthButtonTapped(_ sender: Any) {
    }
    @IBAction func diligentAllowanceMonthButtonTapped(_ sender: Any) {
    }
    @IBAction func breakTimeButtonTapped(_ sender: Any) {
    }
    @IBAction func addedButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listEmployeeSettingTableView.dequeueReusableCell(withIdentifier: "listEmployeeSetting", for: indexPath) as? ListEmployeeSettingTableViewCell
        cell?.employeeCodeLabel.text = "\(indexPath.row)"
        cell?.employeeNameLabel.text = "\(indexPath.row)"
        cell?.employeePositionLabel.text = "\(indexPath.row)"
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
