//
//  ViewSettingBranchViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingBranchViewController: UIViewController {

    @IBOutlet weak var brandNameTextField: UITextField!
    @IBOutlet weak var brandNumberTextField: UITextField!
    @IBOutlet weak var brandCompanyTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var provinceTextField: UITextField!
    @IBOutlet weak var postOfficeTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var faxTextField: UITextField!
    @IBOutlet weak var taxIdTextField: UITextField!
    @IBOutlet weak var showAddressSwitch: UISwitch!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
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
