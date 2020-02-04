//
//  CreateVatPopupViewController.swift
//  ALWPOS
//
//  Created by Hive on 8/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateVatPopupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var vatTextField: UITextField!
    @IBOutlet weak var calculateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createBtnTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
extension CreateVatPopupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VatTableViewCell
        cell.vatLabel.text = "vat\(indexPath.row)"
        cell.calLabel.text = "cal\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
    
}
