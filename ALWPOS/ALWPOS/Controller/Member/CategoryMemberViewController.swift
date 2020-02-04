//
//  CategoryMemberViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 14/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CategoryMemberViewController: UIViewController {
    
    //MARK: instance
    let cellId = "cell"
    
    //MARK: properties
    var leftView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
    }()
    var rightView: AddCategoryMemberView = {
        let view = AddCategoryMemberView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
    }()
    
    var codeLabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.backgroundColor = .blueAlway
        lb.bgLabel("รหัสประเภทลูกค้า", fontSize: 16)
        return lb
    }()
    var nameLabel: PaddingLabel = {
        let lb = PaddingLabel()
        lb.backgroundColor = .blueAlway
        lb.bgLabel("ประเภทลูกค้า", fontSize: 16)
        return lb
    }()
    
    var tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    lazy var headStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeLabel, self.nameLabel])
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.spacing = 2
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.leftView, self.rightView])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.bgGray
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CategoryMemberCell.self, forCellReuseIdentifier: cellId)
        setupView()
    }
    
    //MARK: @objc
    func addCategory() {
        print("add_category")
    }
    func saveCategory() {
        print("save_category")
    }
    func deleteCategory() {
        print("delete_category")
    }
    
    //MARK: func
    func setupView() {
        view.addSubview(stackView)
        setupTableView()
        let paddingTop = (navigationController?.navigationBar.frame.height)! + 20
        let paddingBottom = (tabBarController?.tabBar.frame.height)!
        stackView.anchor(top: view.topAnchor, leading: view.leadingAnchor,
                         trailing: view.trailingAnchor, bottom: view.bottomAnchor,
                         padding: .init(top: paddingTop + 8, left: 16, bottom: paddingBottom + 8, right: 16))
        
    }
    
    func setupTableView() {
        leftView.addSubview(headStackView)
        leftView.addSubview(tableView)
        
        headStackView.anchor(top: leftView.topAnchor, leading: leftView.leadingAnchor,
                             trailing: leftView.trailingAnchor, bottom: nil,
                             size: .init(width: leftView.frame.width, height: 50))
        tableView.anchor(top: headStackView.bottomAnchor, leading: leftView.leadingAnchor,
                         trailing: leftView.trailingAnchor, bottom: leftView.bottomAnchor,
                         padding: .init(top: 0, left: 0, bottom: 16, right: 0))
    }
   

}

//MARK: extension
extension CategoryMemberViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CategoryMemberCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
