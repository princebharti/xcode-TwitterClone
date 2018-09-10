//
//  CollectionViewSupplementaryHeader.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewHeader: UICollectionReusableView {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    var header: String? {
        didSet{
            if let header = header {
                headerLabel.text = header
            }
        }
    }
    
        
}
