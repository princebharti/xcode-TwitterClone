//
//  CollectionViewCellData.swift
//  TwitterClone
//
//  Created by Prince Bharti on 26/08/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation


class User {
    
    var name: String
    var userName: String
    var bio: String
    var profileImage: String

    
    init(name: String, userName: String, bio: String, profileImage: String){
        self.name = name
        self.userName = userName
        self.bio = bio
        self.profileImage = profileImage
    }
    
}
