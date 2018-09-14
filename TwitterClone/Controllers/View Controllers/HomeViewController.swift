//
//  HomeController.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit
import SVProgressHUD
class HomeViewController: UICollectionViewController {
    
    
    let modelController = HomeModelController()
    let networkController = NetworkController()
    var users: [User] = []
    var tweets: [Tweet] = []
    
    
    
    //MARK: view controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewFlowLayoutSetup(with: (collectionView?.frame.size.width)!)
        navigationbarSetup()
        loadHomeData()
    }
    
    
    fileprivate func loadHomeData(){
        networkController.loadHomeData { (home) in
            DispatchQueue.main.async {
                guard let users = home?.users else { return }
                guard let tweets = home?.tweets else { return }

                self.users = users
                self.tweets = tweets
                self.collectionView?.reloadData()
                SVProgressHUD.dismiss()
            }
        }
        SVProgressHUD.show()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewFlowLayoutSetup(with: view.bounds.size.width)
        collectionView?.collectionViewLayout.invalidateLayout()
        collectionViewFlowLayoutSetup(with: size.width)
    }
    
    //MARK: Custome setup
    
    
    fileprivate func collectionViewFlowLayoutSetup(with Width: CGFloat){
        
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: Width, height: 300)
        }
        
    }
    
    fileprivate func navigationbarSetup(){
        self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
    }
    
    //MARK: collection view data source methods
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return section == 0 ? users.count : tweets.count
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            
            let userCell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCell", for: indexPath) as! HomeControllerCollectionViewUserCell
            userCell.user = users[indexPath.item]
            
            return userCell
        } else {
            
            let tweetCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TweetCell", for: indexPath) as! HomeControllerCollectionViewTweetCell
            
            tweetCell.tweet = tweets[indexPath.item]
            return tweetCell
            
        }
        
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        
        if kind == UICollectionElementKindSectionHeader {
            // collection view header
            let supplimentaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewSupplementaryHeader", for: indexPath) as! HomeControllerCollectionViewHeader
            supplimentaryView.header = "WHO TO FOLLOW"
            return supplimentaryView
        } else {
            // collection view footer
            let supplimentaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewSupplementaryFooter", for: indexPath) as! HomeControllerCollectionViewFooter
            supplimentaryView.footer = "Show me more"
            return supplimentaryView
            
        }
        
    }
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let headerSize = section == 0 ? CGSize(width: collectionView.bounds.size.width , height: 50.0) : CGSize(width: 0, height: 0)
        
        return headerSize
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        let footerSize = section == 0 ? CGSize(width: collectionView.bounds.size.width , height: 50.0) : CGSize(width: 0, height: 0)
        
        return footerSize
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let sectionInset = section == 0 ? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) : UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        
        return sectionInset
    }
    
    
}


