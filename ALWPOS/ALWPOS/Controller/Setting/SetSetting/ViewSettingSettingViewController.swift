//
//  ViewSettingSettingViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 5/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ViewSettingSettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var multiplierTextField: UITextField!
    @IBOutlet weak var addedButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var listUnitSettingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listUnitSettingTableView.rowHeight = 52.0
        listUnitSettingTableView.dataSource = self
        listUnitSettingTableView.delegate = self
    }
    
    @IBAction func addedButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listUnitSettingTableView.dequeueReusableCell(withIdentifier: "listUnitSetting", for: indexPath) as? ListUnitSettingTableViewCell
        cell?.numberLabel.text = "\(indexPath.row)"
        cell?.unitLabel.text = "\(indexPath.row)"
        cell?.multiplierLabel.text = "\(indexPath.row)"
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
