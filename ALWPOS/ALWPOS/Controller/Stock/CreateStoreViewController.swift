//
//  CreateStoreViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 26/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateStoreViewController: UIViewController {
    
    var cellId = "cell"
    
    var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var stockLabel: UILabel = {
        let label = UILabel()
        label.text = "จัดการสต๊อค"
        label.font = UIFont(name: "Kanit", size: 20)
        label.textColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var searchLabel: UILabel = {
        let label = UILabel()
        label.blueLabel(text: "ค้นหา", fontSize: 14)
        return label
    }()
    
    var codeLabel: UILabel = {
        let lb = UILabel()
        lb.text = "รหัสสต๊อค"
        lb.font = UIFont(name: "Kanit", size: 14)
        lb.textAlignment = .center
        lb.textColor = .white
        lb.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        return lb
    }()
    
    var nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "ชื่อสต๊อค"
        lb.font = UIFont(name: "Kanit", size: 14)
        lb.textAlignment = .center
        lb.textColor = .white
        lb.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        return lb
    }()
    
    
    var detailStoreView: StoreDtail = {
        let view = StoreDtail()
        view.createStoreButton.addTarget(self, action: #selector(popover(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
    }()
    
    var searchTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "ค้นหา"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    var tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        return tb
    }()
    
    var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("บันทึก", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.00, alpha:1.0)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("ยกเลิก", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.saveButton,self.cancelButton])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 16
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    lazy var labelStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeLabel, self.nameLabel])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 2
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: - init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray.withAlphaComponent(0.7)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(StoreTableViewCell.self, forCellReuseIdentifier: cellId)
        
        setupView()
    
    }
    
    
    //MARK: - @objc
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func popover(sender: UIButton) {
        let tableViewController = UITableViewController()
        tableViewController.modalPresentationStyle = UIModalPresentationStyle.popover
        tableViewController.preferredContentSize = CGSize(width: 200, height: 200)
        present(tableViewController, animated: true, completion: nil)
         
        let popoverPresentationController = tableViewController.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        
        popoverPresentationController?.permittedArrowDirections = [.up,.down]
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    
    //MARK: - func
    private func setupView() {
        //contentview
        view.addSubview(contentView)
        contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: 500).isActive = true
        //stocklabel
        contentView.addSubview(stockLabel)
        stockLabel.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, trailing: contentView.trailingAnchor, bottom: nil,
                          size: .init(width: 0, height: 44))
        //detailstoreview
        contentView.addSubview(detailStoreView)
        detailStoreView.anchor(top: stockLabel.bottomAnchor, leading: contentView.leadingAnchor, trailing: contentView.trailingAnchor, bottom: nil,
                               size: .init(width: 0, height: 132))
        //searchlabel
        contentView.addSubview(searchLabel)
        searchLabel.anchor(top: detailStoreView.bottomAnchor, leading: contentView.leadingAnchor,
                           trailing: nil, bottom: nil, padding: .init(top: 8, left: 16, bottom: 0, right: 0),
                           size: .init(width: 60, height: 40))
        //searchtextfield
        contentView.addSubview(searchTextField)
        searchTextField.anchor(top: detailStoreView.bottomAnchor, leading: searchLabel.trailingAnchor,
                               trailing: contentView.trailingAnchor,
                               bottom: nil, padding: .init(top: 8, left: 8, bottom: 0, right: 8),
                               size: .init(width: 390, height: 40))
        //labelStackView
        contentView.addSubview(labelStackView)
        labelStackView.anchor(top: searchTextField.bottomAnchor, leading: contentView.leadingAnchor,
                              trailing: contentView.trailingAnchor, bottom: nil,
                              padding: .init(top: 8, left: 8, bottom: 0, right: 8),
                              size: .init(width: 0, height: 40))
        //stackviewButton
        contentView.addSubview(stackView)
        stackView.anchor(top: nil, leading: contentView.leadingAnchor,
                         trailing: contentView.trailingAnchor,
                         bottom: contentView.bottomAnchor,
                         padding: .init(top: 0, left: 16, bottom: 4, right: 16),
                         size: .init(width: 0, height: 40))
        //tableview
        contentView.addSubview(tableView)
        tableView.anchor(top: labelStackView.bottomAnchor, leading: contentView.leadingAnchor,
                         trailing: contentView.trailingAnchor,
                         bottom: stackView.topAnchor,
                         padding: .init(top: 0, left: 8, bottom: 8, right: 8))
        
    }
}
//MARK: - extension
extension CreateStoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? StoreTableViewCell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
}
