//
//  UIImageView+URL.swift
//  TwitterClone
//
//  Created by Prince Bharti on 14/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import UIKit


extension UIImageView {
    
    /// To load the imageView with the image at given url
    var url: String {
        
        get{
           return ""
        }
        set{
            guard let URL = URL(string: newValue) else { return }
            let session = URLSession.shared
            let task = session.dataTask(with: URL) { (data, response, error) in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                   guard let data = data else { return }
                     DispatchQueue.main.async {
//                        print("image data is loading")
                        self.image = UIImage(data: data)
                    }
                }
                
            }
            
            task.resume()
        }
    }
    
}
