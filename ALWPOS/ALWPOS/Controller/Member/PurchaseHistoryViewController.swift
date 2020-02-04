//
//  PurchaseHistoryViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 8/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class PurchaseHistoryViewController: UIViewController {
    
    //MARK: instance
    let cellId = "cell"
    
    //MARK: tableview
    var tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    //MARK: label
    var dateLabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.bgLabel("วันที่", fontSize: 16)
        return lb
    }()
    var listLabel: PaddingLabel = {
        let lb = PaddingLabel()
        lb.bgLabel("รายการ", fontSize: 16)
        return lb
    }()
    var numberlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.bgLabel("จำนวน", fontSize: 16)
        return lb
    }()
    var discountlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.bgLabel("ส่วนลด", fontSize: 16)
        return lb
    }()
    var pricelabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.bgLabel("ราคารวม", fontSize: 16)
        return lb
    }()
    var billNumberlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.bgLabel("เลขที่บิล", fontSize: 16)
        return lb
    }()
    
    //MARK: stackview
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.dateLabel, self.listLabel, self.numberlabel,
                                                self.discountlabel, self.pricelabel, self.billNumberlabel])
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.spacing = 2
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: view
    var view1: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.0)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PurchaseHistoryCell.self, forCellReuseIdentifier: cellId)
        setupView()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: func
    func setupView() {
        view.addSubview(view1)
        view1.anchor(top: view.topAnchor, leading: view.leadingAnchor,
                     trailing: view.trailingAnchor, bottom: nil,
                     padding: .init(top: 8, left: 8, bottom: 0, right: 8),
                     size: .init(width: 0, height: 52))
        view1.addSubview(stackView)
        stackView.anchor(top: view1.topAnchor, leading: view1.leadingAnchor, trailing: view1.trailingAnchor, bottom: view1.bottomAnchor)
        view.addSubview(tableView)
        tableView.anchor(top: view1.bottomAnchor, leading: view1.leadingAnchor,
                         trailing: view1.trailingAnchor, bottom: view.bottomAnchor,
                         padding: .init(top: 0, left: 0, bottom: 8, right: 0))
        
    }

}
//MARK: extension
extension PurchaseHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PurchaseHistoryCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
