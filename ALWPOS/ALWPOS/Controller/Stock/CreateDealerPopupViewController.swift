//
//  CreateDealerPopupViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 21/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateDealerPopupViewController: UIViewController {
    
    //MARK: - instance
    let cellId = "cell"
    
    var contentView: UIView = {
        let popView = UIView()
        popView.backgroundColor = .white
        popView.layer.cornerRadius = 5
        popView.translatesAutoresizingMaskIntoConstraints = false
        return popView
    }()
    
    var headerView: UILabel = {
        let header = UILabel()
        header.textAlignment = .center
        header.text = "ผู้จัดจำหน่าย"
        header.font = UIFont(name: "Kanit", size: 20)
        header.textColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    var searchView: SearchView = {
        let view = SearchView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var searchLabel: UILabel = {
        let search = UILabel()
        search.setupLabel(text: "ค้นหา",
                          textAlign: .left,
                          fontStyle: "Kanit",
                          fontSize: 16,
                          color: UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0))
        return search
    }()
    
    var tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .white
        return tb
    }()
    
    var dealerView: DealerDetailView = {
        let view = DealerDetailView()
        view.addInfoButton.addTarget(self, action: #selector(addDealerbtnTap), for: .touchUpInside)
        view.cancelButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        view.backgroundColor = .white
        return view
    }()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DealerCell.self, forCellReuseIdentifier: cellId)
    }
    
    //MARK: - func
    private func setupView() {
        view.addSubview(contentView)
        contentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: 800).isActive = true
        
        contentView.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        headerView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        contentView.addSubview(searchView)
        searchView.anchor(top: headerView.bottomAnchor, leading: contentView.leadingAnchor, trailing: nil, bottom: nil,
                          padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: 388, height: 100))
        
        contentView.addSubview(tableView)
        tableView.anchor(top: searchView.bottomAnchor, leading: contentView.leadingAnchor, trailing: searchView.trailingAnchor, bottom: contentView.bottomAnchor,
                         padding: .init(top: 8, left: 8, bottom: 8, right: 0))
        
        contentView.addSubview(dealerView)
        dealerView.anchor(top: headerView.bottomAnchor, leading: nil, trailing: contentView.trailingAnchor, bottom: contentView.bottomAnchor,
                          padding: .init(top: 0, left: 0, bottom: 8, right: 8), size: .init(width: 388, height: 0))
        
    }
    
    //MARK: - objc
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
        
    }
    @objc func addDealerbtnTap() {
        dismiss(animated: true, completion: nil)
    }

}

//MARK: - extension
extension CreateDealerPopupViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? DealerCell
        cell?.codeLabel.text = "\(indexPath.row)"
        cell?.nameLabel.text = "1\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48.0
    }
    
}



