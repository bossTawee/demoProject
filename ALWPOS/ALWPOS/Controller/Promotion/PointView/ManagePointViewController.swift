//
//  ManagePointViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 30/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class ManagePointViewController: UIViewController {
    
    var name: String?
    
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var pointTableView: UITableView!
    @IBOutlet weak var pointDetailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        borderRadius(button: createButton)
        borderCancelRadius(button: cancelButton)
        
        productLabel.text = name
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createButtonTapped(_ sender: Any) {
        
    }
    
    func borderRadius(button: UIButton){
        button.layer.cornerRadius = 5
    }
    func borderCancelRadius(button: UIButton){
        button.layer.cornerRadius = 20
    }
}
