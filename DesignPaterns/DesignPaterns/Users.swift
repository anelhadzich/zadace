//
//  Users.swift
//  DesignPaterns
//
//  Created by Anel Hadzic on 03/11/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

import UIKit

class Users: NSObject {
    static let shared = Users()
    var users = [User]()
    
    private override init()  {
        super.init()
    }

}
