//
//  ReceiveStockViewController.swift
//  ALWPOS
//
//  Created by Hive on 10/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ReceiveStockViewController: UIViewController {
  
    var datePicker: UIDatePicker!
    var pickerToolbar: UIToolbar!
    var selectedTextField: UITextField?
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var fromDateTextField: UITextField!
    @IBOutlet weak var arriveDateTextField: UITextField!
    
    @IBOutlet weak var vendorButton: UIButton!
    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            self.searchButton.layer.cornerRadius = 5
        }
    }
    
    @IBOutlet weak var receiveTableView: UITableView!
    
    @IBOutlet weak var searchView: UIView! {
        didSet {
            self.searchView.layer.borderWidth = 1
            self.searchView.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
        }
    }
    @IBOutlet weak var receiveListView: UIView!{
        didSet {
            self.receiveListView.layer.borderWidth = 1
            self.receiveListView.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromDateTextField.addTarget(self, action: #selector(selectedDate(_:)), for: .touchDown)
        arriveDateTextField.addTarget(self, action: #selector(selectedDate(_:)), for: .touchDown)
        
        vendorButton.borderButton()
        
        receiveTableView.delegate = self
        receiveTableView.dataSource = self

    }
    
    //MARK: - @IBAction
    @IBAction func searchBtnTap(_ sender: Any) {
    }
    
    @IBAction func createStockBtnTap(_ sender: Any) {
        openCreateStockViewController()
    }
    
    @IBAction func vendorBtnTap(_ sender: Any) {
        callPopover(vendorButton)
    }
    
    //MARK: - func
    func goToProductStockViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "productStock") as! DetailProductStockViewController
        if let naviagtor = navigationController {
            naviagtor.pushViewController(vc, animated: true)
        }
    }
    
    func openCreateStockViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "createStock") as! CreateStockViewController
        if let navigator = navigationController {
            navigator.pushViewController(vc, animated: true)
        }
    }
    
    func callPopover(_ sender: UIButton) {
        let vc = PopoverViewController()
        vc.modalPresentationStyle = .popover
        vc.preferredContentSize = CGSize(width: sender.frame.width, height: 200)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
        let popoverPresentationController = vc.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.permittedArrowDirections = [.up, .down]
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    
    @objc func selectedDate(_ textField: UITextField) {
        selectedTextField = textField
        datePicker = UIDatePicker()
        datePicker.backgroundColor = .white
        datePicker?.datePickerMode = .date
        datePicker.calendar = Calendar(identifier: .buddhist)
        datePicker.locale = Locale(identifier: "th")
        textField.inputView = datePicker
        uiToolBar(textField)
    }
    
    func uiToolBar(_ textField: UITextField) {
        pickerToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 0, height: 44))
        pickerToolbar.barStyle = UIBarStyle.default
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) // ใช้เป็น space ตรงกลางเพื่อผลักให้ปุ่ม Done ไปชิดด้านขวา
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTapped(sender:)))
        
        pickerToolbar.items = [cancelButton, flexibleSpace, doneButton]
        textField.inputAccessoryView = pickerToolbar
    }
    
    //MARK: - @objc
    @objc func doneTapped(sender:UIBarButtonItem!) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "th") //line นี้ๆ
        dateFormatter.setLocalizedDateFormatFromTemplate("yyyy-MM-dd")
        
        selectedTextField!.text = dateFormatter.string(from: datePicker.date)
        selectedTextField!.resignFirstResponder()
    }
    @objc func cancelTapped(sender:UIBarButtonItem!) {
        selectedTextField!.resignFirstResponder()
    }
}

extension ReceiveStockViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = receiveTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListReceiveStockTableViewCell
        cell.onAddButton = {
            print("test......\(indexPath.row)")
            self.goToProductStockViewController()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 52.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       openCreateStockViewController()
    }
}

extension ReceiveStockViewController: popoverDelegate {
    func selectedPopup(_ value: String) {
        vendorButton.setTitle(value, for: .normal)
        vendorButton.setTitleColor(.black, for: .normal)
    }
}
