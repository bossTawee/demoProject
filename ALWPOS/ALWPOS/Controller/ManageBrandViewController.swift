//
//  ManageBrandViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 9/1/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit
struct brand {
    var name = String()
    var image = String()
}
struct branch {
    var name = String()
    var detail = String()
    var image = String()
}
struct banner {
    var image = String()
}
class ManageBrandViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var brandCollectionView: UICollectionView!
    @IBOutlet weak var branchCollectionView: UICollectionView!
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var manageBrandButton: UIButton!
    
    var brandData = [brand]()
    var branchData = [branch]()
    var bannerData = [banner]()
    var loginDelgate: login?

    override func viewDidLoad() {
        super.viewDidLoad()

        brandData = [
            brand(name: "สมชายการค้า", image: "Logo_App.png")
        ]
        branchData = [
            branch(name: "สมชายการค้า", detail: "สาขาเชียงใหม่", image: "Logo_App.png")
        ]
        bannerData = [
            banner(image: "Logo_App.png"),
            banner(image: "Logo_App.png"),
            banner(image: "Logo_App.png"),
            banner(image: "Logo_App.png"),
            banner(image: "Logo_App.png")
        ]
        
        self.brandCollectionView.delegate = self
        self.brandCollectionView.dataSource = self
        self.branchCollectionView.delegate = self
        self.branchCollectionView.dataSource = self
        self.bannerCollectionView.delegate = self
        self.bannerCollectionView.dataSource = self
        
        self.manageBrandButton.topRound(cornerRadius: 10)
        //self.brandView.topRounds(cornerRadius: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
            case brandCollectionView:
                return brandData.count
            case branchCollectionView:
                return branchData.count + 1
            case bannerCollectionView:
                return bannerData.count
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == brandCollectionView {
            let cell = brandCollectionView.dequeueReusableCell(withReuseIdentifier: "brandCell", for: indexPath) as? BrandCollectionViewCell
            cell?.brandButton.topRound(cornerRadius: 10)
            cell?.brandImageView.image = UIImage(named: brandData[indexPath.row].image)
            cell?.brandNameLabel.text = brandData[indexPath.row].name
            return cell!
        } else if collectionView == branchCollectionView {
            if indexPath.row != branchData.count {
                let cell = branchCollectionView.dequeueReusableCell(withReuseIdentifier: "branchCell", for: indexPath) as? BranchCollectionViewCell
                cell?.branchView.roundedAllCorner()
                cell?.branchImageView.image = UIImage(named: branchData[indexPath.row].image)
                cell?.branchNameLabel.text = branchData[indexPath.row].name
                cell?.branchDetailLabel.text = branchData[indexPath.row].detail
                cell?.onSelectLoginBranch = {
                    self.loginDelgate?.signIn(value: 2)
                    self.performSegue(withIdentifier: "backToViewController", sender: nil)
                }
                return cell!
            } else {
                let cell = branchCollectionView.dequeueReusableCell(withReuseIdentifier: "manageBranchCell", for: indexPath) as? ManageBranchCollectionViewCell
//                cell?.manageBranchButton.roundedButtonTop()
                return cell!
            }
        } else {
            let cell = bannerCollectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as? BannerCollectionViewCell
            cell?.bannerImageView.image = UIImage(named: bannerData[indexPath.row].image)
            return cell!
        }
    }
    
    @IBAction func manageBrandButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoManageBrand", sender: nil)
    }
    
    @IBAction func manageBranchButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoManageBranch", sender: nil)
    }
    
    @IBAction func unwindToManageBrandViewController(_ unwindSegue: UIStoryboardSegue) {
        print("manageBrand controller")
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
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
