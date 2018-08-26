//
//  CollectionViewCell.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var profilePicture: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var userNameLable: UILabel!
    @IBOutlet private weak var bioTextView: UITextView!
    
    var user: User? {
        didSet{
            if let user = user {
                bioTextView.text = user.title
            }
        }
    }
    

}
