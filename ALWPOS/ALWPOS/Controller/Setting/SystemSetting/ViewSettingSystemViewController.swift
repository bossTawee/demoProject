//
//  ViewSettingSystemViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingSystemViewController: UIViewController {

    @IBOutlet weak var copyTextField: UITextField!
    @IBOutlet weak var copySalesProductTextField: UITextField!
    @IBOutlet weak var copyClosingSaleTextField: UITextField!
    @IBOutlet weak var copyCloseShiftTextField: UITextField!
    @IBOutlet weak var printReceiptEveryTimeSwitch: UISwitch!
    @IBOutlet weak var copyReceip1TextField: UITextField!
    @IBOutlet weak var copyReceip2TextField: UITextField!
    @IBOutlet weak var copyReceip3TextField: UITextField!
    @IBOutlet weak var copyReceip4TextField: UITextField!
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
