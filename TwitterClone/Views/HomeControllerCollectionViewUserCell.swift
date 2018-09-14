//
//  CollectionViewCell.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit


@IBDesignable
class HomeControllerCollectionViewUserCell: UICollectionViewCell {
    
    @IBOutlet private weak var profilePicture: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var userNameLable: UILabel!
    @IBOutlet private weak var bioTextView: UITextView!
    
    var user: User? {
        didSet{
            if let user = user {
                profilePicture.url = user.profileImage
                nameLabel.text = user.name
                userNameLable.text = "\(user.userName)"
                bioTextView.text = user.bio
           }
        }
    }
    
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        layoutAttributes.size.height = ceil(size.height)
       
        return layoutAttributes
    }

}
