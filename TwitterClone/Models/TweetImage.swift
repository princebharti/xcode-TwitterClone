//
//  TweetImage.swift
//  TwitterClone
//
//  Created by Prince Bharti on 14/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation

struct TweetImage: Decodable {
    var width: Double?
    var height: Double?
    var imageURL: String?
    
    enum codingKeys: String, CodingKey {
        case width
        case height
        case imageURL = "imageUrl"
    }
}

