//
//  PopoverViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 30/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

protocol popoverDelegate {
    func selectedPopup(_ value: String)
}

class PopoverViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var text: String?
    var arrayString: [String] = [String]()
    var itemArray = ["item1", "item2", "item3", "item4"]
    let cellId = "cell"
    var delegate: popoverDelegate?
    
    var contentView: UIView = {
        let cv = UIView()
        cv.backgroundColor = UIColor.white
        return cv
    }()
    
    var textLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)

        setupView()
    }
    
    func setupView() {
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Kanit", size: 14)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true, completion: nil)
        self.delegate?.selectedPopup(itemArray[indexPath.row])
    }
    
}
