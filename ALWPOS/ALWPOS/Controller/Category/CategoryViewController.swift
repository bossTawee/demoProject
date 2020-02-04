//
//  CategoryViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 4/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //MARK: - Instances
    
    var category = [CategoryDTO]()
    
    // MARK: - Outlet
    
    @IBOutlet weak var categoryCollectionView
    : UICollectionView!
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var codeCategoryTextField: UITextField!
    @IBOutlet weak var numberCodeTextField: UITextField!
    @IBOutlet weak var categoryNameTHTextField: UITextField!
    @IBOutlet weak var categoryNameENTextField: UITextField!
    @IBOutlet weak var productTypeButton: UIButton!
    @IBOutlet weak var groupButton: UIButton!
    @IBOutlet weak var printerButton: UIButton!
    @IBOutlet weak var diccountSwitch: UISwitch!
    @IBOutlet weak var allowPrintSwitch: UISwitch!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    // MARK: - override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "จัดการหมวดสินค้า")
        
        for i in 0...18 {
            let cate = CategoryDTO()
            cate.categoryId = i
            cate.categoryName = "CateTest\(i)"
            cate.categoryImage = "Logo_App.png"
            category.append(cate)
        }
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        buttonCornerRadius(button: createButton)
        buttonCornerRadius(button: deleteButton)
        buttonCornerRadius(button: submitButton)
        buttonBorder(button: productTypeButton)
        buttonBorder(button: groupButton)
        buttonBorder(button: printerButton)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 100
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    // MARK: - Func
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as? CategoryMenuCollectionViewCell
        cell?.uiInitCategoryMenuView(category: category[indexPath.row])
////            cell?.uiInitView(profile: employeeResponse![indexPath.row])
////            cell?.fucnViewProfireEmployeeButton = {
////                self.performSegue(withIdentifier: "segueMangeStaffViewController", sender: indexPath.row)
////            }
////            cell?.selectShceduleButton = {
////                //self.showAlert(message: "เร็วๆนี้ค่ะ0")
////            }
        return cell!
    }
    
    func buttonCornerRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
    
    func buttonBorder(button: UIButton){
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red:205.0/255.0, green:205.0/255.0, blue:205.0/255.0, alpha:0.6).cgColor
        button.layer.cornerRadius = 5
    }
    
    // MARK: - Action
    
    @IBAction func productTypeButtonTapped(_ sender: Any) {
    }
    @IBAction func groupButtonTapped(_ sender: Any) {
    }
    @IBAction func printerButtonTapped(_ sender: Any) {
    }
    @IBAction func createButtonTapped(_ sender: Any) {
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
    }
    @IBAction func submitButtonTapped(_ sender: Any) {
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
