//
//  CreateBrandViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 17/1/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit

class CreateBrandViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backToManageBrandViewController", sender: nil)
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
