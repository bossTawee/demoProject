//
//  PointHistoryCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 8/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class PointHistoryCell: UITableViewCell {
    
    //MARK: label
       var dateLabel: PaddingLabel = {
           let lb = PaddingLabel()
           let width = lb.widthAnchor.constraint(equalToConstant: 150)
           width.isActive = true
           lb.blackLabel(text:"วันที่", fontSize: 16)
           return lb
       }()
       var listLabel: PaddingLabel = {
           let lb = PaddingLabel()
           lb.blackLabel(text:"รายการ", fontSize: 16)
           return lb
       }()
       var numberLabel: PaddingLabel = {
           let lb = PaddingLabel()
           let width = lb.widthAnchor.constraint(equalToConstant: 150)
           width.isActive = true
           lb.blackLabel(text:"จำนวน", fontSize: 16)
           return lb
       }()
       var unitPointLabel: PaddingLabel = {
           let lb = PaddingLabel()
           let width = lb.widthAnchor.constraint(equalToConstant: 150)
           width.isActive = true
           lb.blackLabel(text:"แต้ม/หน่วย", fontSize: 16)
           return lb
       }()
       var totalPointLabel: PaddingLabel = {
           let lb = PaddingLabel()
           let width = lb.widthAnchor.constraint(equalToConstant: 150)
           width.isActive = true
           lb.blackLabel(text:"แต้มรวม", fontSize: 16)
           return lb
       }()
       
       //MARK: stackview
       lazy var stackView: UIStackView = {
           let sv = UIStackView(arrangedSubviews: [self.dateLabel, self.listLabel, self.numberLabel,
                                                   self.unitPointLabel, self.totalPointLabel])
           sv.axis = .horizontal
           sv.distribution = .fill
           sv.spacing = 2
           sv.translatesAutoresizingMaskIntoConstraints = false
           return sv
       }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    //MARK: func
    func setupView() {
        addSubview(stackView)
        stackView.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
