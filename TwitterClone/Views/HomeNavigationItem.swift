//
//  HomeNavigationItem.swift
//  TwitterClone
//
//  Created by Prince Bharti on 06/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit

@IBDesignable
class HomeNavigationItem: UINavigationItem {
   

    
    @IBInspectable var titleImage: UIImage? {
        didSet{
            if let titleImage = titleImage {
                self.titleView = UIImageView(image: titleImage)
                self.titleView?.frame.size = CGSize(width: titleImageWidth, height: titleImageHeight)
                self.titleView?.contentMode = .scaleAspectFit
                self.titleView?.tintColor = UIColor.twitterColor
            }
        }
    }
    
    @IBInspectable var titleImageWidth: CGFloat = 25.0 {
        didSet{
            self.titleView?.frame.size.width = titleImageWidth
        }
    }
    
    @IBInspectable var titleImageHeight: CGFloat = 25.0 {
        didSet{
                self.titleView?.frame.size.height = titleImageHeight
            }
        }

}
