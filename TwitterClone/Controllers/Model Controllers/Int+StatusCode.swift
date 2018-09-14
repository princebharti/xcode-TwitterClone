//
//  Int+StatusCode.swift
//  TwitterClone
//
//  Created by Prince Bharti on 12/09/18.
//  Copyright © 2018 Prince Bharti. All rights reserved.
//

import Foundation

extension Int {
    // represent that request was succesfull or not from server side
    var statusCodeSuccess: Bool {
        return self >= 200 && self < 300
    }
}
