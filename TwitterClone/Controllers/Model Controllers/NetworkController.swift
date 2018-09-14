//
//  NetworkController.swift
//  TwitterClone
//
//  Created by Prince Bharti on 12/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation


class NetworkController {
    
    
    
    func loadHomeData(with completionHandler: @escaping (Home?) -> Void) {
        
        let urlString = "https://api.letsbuildthatapp.com/twitter/home"
        let apiURL = URL(string: urlString)
        guard let url = apiURL else {
            completionHandler(nil)
            return
            
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            } else {
                guard let data = data else {
                    completionHandler(nil)
                    return
                    
                }
                print("reading data ")
      
                let decoder = JSONDecoder()
                do {
                let jsonDecodedData = try decoder.decode(Home.self, from: data)
                    completionHandler(jsonDecodedData)
            
                } catch {
                    print(error.localizedDescription)
                    completionHandler(nil)
                }
            }
            
        }
    task.resume()
        
    }
    
}
