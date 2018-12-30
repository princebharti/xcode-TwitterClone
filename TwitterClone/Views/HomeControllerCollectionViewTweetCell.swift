//
//  HomeControllerCollectionViewTweetCell.swift
//  TwitterClone
//
//  Created by Prince Bharti on 10/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

class HomeControllerCollectionViewTweetCell: UICollectionViewCell {
    
    @IBOutlet private weak var profilePicture: UIImageView!
    @IBOutlet private weak var tweetTextView: UITextView!
    
    var tweet: Tweet? {
        didSet{
            if let tweet = tweet {
                guard let user = tweet.user else { return }
                guard let message = tweet.message else { return }
                
                profilePicture.url = user.profileImage
                
                let attributedText = NSMutableAttributedString(string: user.name, attributes: [.font : UIFont.boldSystemFont(ofSize: 16)])
                let userName = "  \(user.userName)\n"
                attributedText.append(NSAttributedString(string: userName, attributes: [.font: UIFont.systemFont(ofSize: 15), .foregroundColor: UIColor.gray ]))
                
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = 4
                let range = NSMakeRange(0, attributedText.string.count)
                attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: range)
                
                attributedText.append(NSAttributedString(string: message, attributes: [.font: UIFont.systemFont(ofSize: 15)]))
                
            
                
               tweetTextView.attributedText = attributedText
                
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
