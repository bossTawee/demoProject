//
//  LoginViewController.swift
//  ALWPOS
//
//  Created by Hive on 1/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit
@available(iOS 13.0, *)
class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!{
        didSet {
            self.loginButton.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var positionButton: UIButton!{
        didSet {
            self.positionButton.layer.cornerRadius = 5
            self.positionButton.setTitleColor(.black, for: .normal)
        }
    }
    
    let transparentView = UIView()
    let tableView = UITableView()
    var selectButton = UIButton()
    var positionDTO = [String]()
    var loginDelgate: login?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    func addTransprentView(frames: CGRect) {
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
        
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
        tableView.reloadData()
        
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        let tapgestrue = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgestrue)
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0.5
            self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(self.positionDTO.count * 50))
        }, completion: nil)
    }
    
    @objc func removeTransparentView() {
        let frames = selectButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
             self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        }, completion: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 100
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

    

    @IBAction func positionBtnTap(_ sender: Any) {
        selectButton = positionButton
        positionDTO = ["Cashier", "Admin"]
        addTransprentView(frames: positionButton.frame)
    }
    
    @IBAction func loginBtnTap(_sender: Any) {
        loginDelgate?.signIn(value: 3)
        self.performSegue(withIdentifier: "backToViewController", sender: nil)
//        print(positionButton.titleLabel?.text)
    }
    

}

@available(iOS 13.0, *)
extension LoginViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return positionDTO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = positionDTO[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        positionButton.setTitle(positionDTO[indexPath.row], for: .normal)
        removeTransparentView()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
