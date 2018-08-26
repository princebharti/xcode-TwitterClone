//
//  CollectionViewSupplimentaryFooter.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

class CollectionViewSupplimentaryFooter: UICollectionReusableView {
    
    
    @IBOutlet private var footerLabel: UILabel!
    
    var footer: String? {
        didSet{
            if let footer = footer {
                footerLabel.text = footer
            }
        }
    }
}
