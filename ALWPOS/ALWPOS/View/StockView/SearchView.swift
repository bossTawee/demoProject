//
//  SearchView.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 25/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class SearchView: UIView {
    
    //MARK: - instance
    var searchLabel: UILabel = {
        let search = UILabel()
        search.setupLabel(text: "ค้นหา",
                          textAlign: .left,
                          fontStyle: "Kanit",
                          fontSize: 16,
                          color: UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0))
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    
    var searchTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "ค้นหา"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var searchButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        button.layer.cornerRadius = 5
        button.setTitle("ค้นหา", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        button.addTarget(self, action: #selector(searchButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //MARK: - @objc
    @objc func searchButtonTap() {
        print("search button tap......")
    }
    
    //MARK: - func
    func setupView() {
        self.addSubview(searchLabel)
        self.addSubview(searchTextField)
        self.addSubview(searchButton)
        
        //horizontal
        addConstraintWithFormat(format: "H:|-16-[v0]-16-|", views: searchLabel)
        addConstraintWithFormat(format: "H:|-8-[v0]-8-[v1(100)]-8-|", views: searchTextField,searchButton)
        addConstraintWithFormat(format: "V:|[v0]-8-[v1(40)]", views: searchLabel,searchTextField)
        addConstraintWithFormat(format: "V:|[v0]-8-[v1(40)]", views: searchLabel,searchButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
