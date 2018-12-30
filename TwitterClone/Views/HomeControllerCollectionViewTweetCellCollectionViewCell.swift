//
//  HomeControllerCollectionViewTweetCellCollectionViewCell.swift
//  TwitterClone
//
//  Created by Prince Bharti on 10/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewTweetCell: UICollectionViewCell {
    
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        layoutAttributes.size.height = ceil(size.height)
        
        return layoutAttributes
    }

    
    
}
