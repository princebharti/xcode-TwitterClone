//
//  Tweet.swift
//  TwitterClone
//
//  Created by Prince Bharti on 10/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation

struct Tweet: Decodable {
    
    var user: User?
    var message: String?
    var tweetImage: TweetImage?
    
    enum codingKeys:String, CodingKey {
        case user
        case message
        case tweetImage = "image"
    }
    
}
