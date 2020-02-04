//
//  PopupSelectProductViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 28/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit
struct categoryArray {
    var name = String()
}
class PopupSelectProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var page: String?
    var category = [categoryArray]()
    
    @IBOutlet weak var mainView: UIView!{
        didSet{
            mainView.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var cancelButton: UIButton!{
        didSet{
            cancelButton.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var selectedSearchBar: UISearchBar!
    @IBOutlet weak var listSelectedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if page == "category"{
            category.removeAll()
            category = [
                categoryArray(name: "เครื่องดื่ม"),categoryArray(name: "อาหารจานเดียว"),categoryArray(name: "อาหารชุด")
            ]
        } else {
            category.removeAll()
            category = [
                categoryArray(name: "ปลากระป๋อง"),categoryArray(name: "น้ำอัดลม"),categoryArray(name: "น้ำตาล"),categoryArray(name: "ชานม"), categoryArray(name: "ลูกชิ้น")
            ]
        }
        
        listSelectedTableView.rowHeight = 52.0
        listSelectedTableView.dataSource = self
        listSelectedTableView.delegate = self
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listSelectedTableView.dequeueReusableCell(withIdentifier: "selectedPromotion", for: indexPath) as? PopupSelectProductTableViewCell
        cell?.selectedNameLabel.text = category[indexPath.row].name
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
