//
//  CreateUnitPopupViewController.swift
//  ALWPOS
//
//  Created by Hive on 8/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateUnitPopupViewController: UIViewController {

    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var calculateNumberTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var buttonName: String?
    
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
extension CreateUnitPopupViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UnitTableViewCell
        cell.indexLabel.text  = "\(indexPath.row + 1)"
        cell.unitLabel.text = "unit \(indexPath.row)"
        cell.calculateNumLabel.text = "10\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
}
