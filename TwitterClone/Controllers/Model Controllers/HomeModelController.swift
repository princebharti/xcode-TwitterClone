//
//  HomeModelController.swift
//  TwitterClone
//
//  Created by Prince Bharti on 06/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation



public class HomeModelController {
    
    func getUsers() -> [User] {
        //this method provides the list of the Users
        var users: [User] = []
        
        let user1 = User(name: "Prince Bharti", userName: "princebharti1", bio: "Computer proogrammer , Data scientist and swimmer and what not i am coder Computer proogrammer , Data scientist and swimmer ", profileImage: "Prince Bharti")
        
        let user2 = User(name: "Himanshu Dagar", userName: "hdagar3", bio: "ios developer , ex java developer and machine learning , codechef programmer and competitive programmer. worked at dshaw and samsunng", profileImage: "Himanshu Dagar")

        users.append(user1)
        users.append(user2)
        users.append(user2)


        return users
        
    }
    
    
    
    func getTweets() -> [Tweet] {
        
        var tweets: [Tweet] = []
        
        let tweet1 = Tweet(user: User(name: "Prince Bharti", userName: "princebharti1", bio: "Computer proogrammer , Data scientist and swimmer and what not i am coder Computer proogrammer , Data scientist and swimmer ", profileImage: "Prince Bharti"), message: "its been a great ride i am vety excited to do all the ui stuff and i am leartning throufh the heart and this is great")
        
        tweets.append(tweet1)
        tweets.append(tweet1)
        tweets.append(tweet1)

     
    
        
        return tweets
    }
    
}
