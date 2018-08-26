//
//  HomeController.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit


class HomeController: UICollectionViewController {
    
    let itemList = ["Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing consectetaur cillium Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing","Lorem ipsum dolor sit er elit lamet Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing consectetaur cillium Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing","Lorem ipsum dolor sit er, consectetaur cillium  consectetaur cillium Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing","Lorem ipsum dolor sit er elit lamet, consectetaur cillium Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing consectetaur cillium Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSetup()
        
        
    }
    
    fileprivate func layoutSetup(){
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: view.bounds.width, height: 150.0)
        
    }
    
    
    override func viewWillLayoutSubviews() {
        layoutSetup()
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.user = User(title: itemList[indexPath.item])
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
            // collection view header
            let supplimentaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewSupplementaryHeader", for: indexPath) as! CollectionViewSupplementaryHeader
           supplimentaryView.header = "Collection header"
            return supplimentaryView
        } else {
            // collection view footer
            let supplimentaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewSupplementaryFooter", for: indexPath) as! CollectionViewSupplimentaryFooter
            supplimentaryView.footer = "collection footer"
            return supplimentaryView

        }
       
    }
    
    
    
    
    
  
}
