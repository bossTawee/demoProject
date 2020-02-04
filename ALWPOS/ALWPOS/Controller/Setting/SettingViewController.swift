//
//  SettingViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 7/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var settingView: UIView!
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var licenseButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var definitionButton: UIButton!
    @IBOutlet weak var branchButton: UIButton!
    @IBOutlet weak var systemButton: UIButton!
    @IBOutlet weak var unitButton: UIButton!
    @IBOutlet weak var sellerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingUserView()
    }
    
    @IBAction func userButtonTapped(_ sender: Any) {
        buttonColorActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingUserView()
    }
    @IBAction func licenseButtonTapped(_ sender: Any) {
        buttonColorActive(button: licenseButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingLicenseView()
    }
    @IBAction func employeeButtonTapped(_ sender: Any) {
        buttonColorActive(button: employeeButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingEmployeeView()
    }
    @IBAction func definitionButtonTapped(_ sender: Any) {
        buttonColorActive(button: definitionButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingDefinitionView()
    }
    @IBAction func branchButtonTapped(_ sender: Any) {
        buttonColorActive(button: branchButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingBranchView()
    }
    @IBAction func systemButtonTapped(_ sender: Any) {
        buttonColorActive(button: systemButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: unitButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingSystemView()
    }
    @IBAction func unitButtonTapped(_ sender: Any) {
        buttonColorActive(button: unitButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: sellerButton)
        presentSettingUnitView()
    }
    @IBAction func sellerButtonTapped(_ sender: Any) {
        buttonColorActive(button: sellerButton)
        buttonColorNonActive(button: userButton)
        buttonColorNonActive(button: licenseButton)
        buttonColorNonActive(button: employeeButton)
        buttonColorNonActive(button: definitionButton)
        buttonColorNonActive(button: branchButton)
        buttonColorNonActive(button: systemButton)
        buttonColorNonActive(button: unitButton)
        presentSettingSellerView()
    }
    
    func presentSettingUserView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingUserView") as! ViewSettingUserViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingLicenseView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingLicenseView") as! ViewSettingLicenseViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingEmployeeView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingEmployeeView") as! ViewSettingEmployeeViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingDefinitionView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingDefinitionView") as! ViewSettingDefinitionViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingBranchView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingBranchView") as! ViewSettingBranchViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingSystemView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingSystemView") as! ViewSettingSystemViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingUnitView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingUnitView") as! ViewSettingSettingViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func presentSettingSellerView(){
        let vc = UIStoryboard(name: "Setting", bundle: nil).instantiateViewController(withIdentifier: "settingSellerView") as! ViewSettingSellerViewController
        let mainView = CGRect(x: 0, y: 0, width: settingView.bounds.width, height: settingView.bounds.height)
        vc.view.frame = mainView
        self.addChild(vc)
        self.settingView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    func buttonColorNonActive(button: UIButton){
        button.setTitleColor(.gray, for: .normal)
        button.backgroundColor = .lightGray
    }
    func buttonColorActive(button: UIButton){
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
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
