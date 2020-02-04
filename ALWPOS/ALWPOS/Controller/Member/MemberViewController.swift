//
//  MemberViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 31/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController {
    
    //MARK: instatnce
    let cellId = "cell"
    let tableView = UITableView()
    var selectButton = false
    var categoryMember = ["memberA", "memberB", "memberC", "memberD"]
    //MARK: - @IBOutlet
    @IBOutlet weak var categoryCustomerButton: UIButton!{
        didSet {
            self.categoryCustomerButton.borderButton() 
        }
    }
    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            self.searchButton.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var addMemberButton: UIButton! {
        didSet {
            self.addMemberButton.layer.cornerRadius = 5
        }
    }
    
    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBOutlet weak var headerView: UIView! {
        didSet {
            self.headerView.layer.cornerRadius = 2
        }
    }
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "สมาชิก")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    //MARK: - func
    func callAddMemberViewController() {
//        let sb = UIStoryboard(name: "Member", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "infoMember") as! InfomationMemberViewController
//        vc.statusTest = status
//        if let navigator = navigationController {
//            navigator.pushViewController(vc, animated: true)
//        }
        let vc = MemberDetailViewController()
        if let navigator = navigationController {
            navigator.pushViewController(vc, animated: true)
        }
    }
    
    func addTransprentView(frames: CGRect) {
        
        tableView.frame = CGRect(x: frames.origin.x + 124, y: frames.origin.y + frames.height, width: self.categoryCustomerButton.frame.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        tableView.layer.borderWidth = 1
        tableView.layer.borderColor = UIColor.lightGray.cgColor
        tableView.reloadData()
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.tableView.frame = CGRect(x: frames.origin.x + 124, y: frames.origin.y + frames.height, width: self.categoryCustomerButton.frame.width, height: CGFloat(self.categoryMember.count * 50))
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = headerView.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
             self.tableView.frame = CGRect(x: frames.origin.x + 124, y: frames.origin.y + frames.height, width: self.categoryCustomerButton.frame.width, height: 0)
        }, completion: nil)
    }
    
    //MARK: - @IBAction
    @IBAction func searchBtnTap(_ sender: Any) {
        
    }
    @IBAction func addMemberBtnTap(_ sender: Any) {
//        NotificationCenter.default.post(name: .create, object: self)
        callAddMemberViewController()
    }
    @IBAction func categoryCustomerBtnTap(_ sender: Any) {
        selectButton = !selectButton
        if selectButton {
            addTransprentView(frames: headerView.frame)
        } else {
            removeTransparentView()
        }
        
    }
}
//MARK: - extension
extension MemberViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MemberCollectionViewCell
        cell.layer.cornerRadius = 5
        cell.imageMember.image = UIImage(named: "Logo_App")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        self.callAddMemberViewController()
    }
    
}

extension MemberViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryMember.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = self.categoryMember[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectButton = !selectButton
        categoryCustomerButton.setTitle(self.categoryMember[indexPath.row], for: .normal)
        categoryCustomerButton.setTitleColor(.black, for: .normal)
        removeTransparentView()
    }
    
    
}
