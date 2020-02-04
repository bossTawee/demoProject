//
//  WithdrawStockViewController.swift
//  ALWPOS
//
//  Created by Hive on 11/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class WithdrawStockViewController: UIViewController {
    
    //MARK: instance
    var datePicker: UIDatePicker!
    var pickerToolbar: UIToolbar!
    var selectedTextField: UITextField?
    
    //MARK: @IBOutlet
    @IBOutlet weak var searchView: UIView! {
        didSet {
            self.searchView.borderView()
        }
    }
    @IBOutlet weak var detailProductView: UIView!{
        didSet {
            self.detailProductView.borderView()
        }
    }
   
    @IBOutlet weak var detailProductTableView: UITableView!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var fromDateTextField: UITextField!
    @IBOutlet weak var arriveDateTextField: UITextField!
    
    @IBOutlet weak var kindWithdrawButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromDateTextField.addTarget(self, action: #selector(selectedDate(_:)), for: .touchDown)
        arriveDateTextField.addTarget(self, action: #selector(selectedDate(_:)), for: .touchDown)
        
        kindWithdrawButton.borderButton()
        
        detailProductTableView.delegate = self
        detailProductTableView.dataSource = self
        
    }
    //MARK: - func
    func openCreateWithdrawViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "withdrawStock") as! CreateWithDrawStockViewController
        if let naviagtor = navigationController {
            naviagtor.pushViewController(vc, animated: true)
        }
    }
    
    func goToWithdrawStockProductViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "withdrawProduct") as! WithDrawStockProductViewController
        if let naviagtor = navigationController {
            naviagtor.pushViewController(vc, animated: true)
        }
    }
    
    func callPopover(_ sender: UIButton) {
        let vc = PopoverViewController()
        vc.modalPresentationStyle = .popover
        vc.preferredContentSize = CGSize(width: sender.frame.width, height: 200)
        present(vc, animated: true, completion: nil)
        
        let popoverPresentationController = vc.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.permittedArrowDirections = [.up, .down]
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
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
    @objc func doneTapped(sender:UIBarButtonItem!) {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "th")
        dateFormatter.setLocalizedDateFormatFromTemplate("yyyy-MM-dd")
        
        selectedTextField!.text = dateFormatter.string(from: datePicker.date)
        selectedTextField!.resignFirstResponder()
    }
    @objc func cancelTapped(sender:UIBarButtonItem!) {
        selectedTextField!.resignFirstResponder()
    }
    
    //MARK: - @IBAction
    @IBAction func kindWithdrawBtnTap(_ sender: Any) {
        callPopover(kindWithdrawButton)
    }
    @IBAction func searchBtnTap(_ sender: Any) {
        
    }
    @IBAction func addWithDrawStockBtnTap(_ sender: Any) {
        openCreateWithdrawViewController()
    }

}

extension WithdrawStockViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailProductTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListStockWithDrawTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goToWithdrawStockProductViewController()
    }
    
}
