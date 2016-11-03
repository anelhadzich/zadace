//
//  User.swift
//  DesignPaterns
//
//  Created by El Capitan on 03/11/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

import UIKit

class User: NSObject {
    var id: Int?
    var name: String?
    var userName: String?
    var email: String?
    var address: Address?
    var geo: Geo?
    var phone: String?
    var website: String?
    var company: Company?
    
    init(id: Int, name: String, userName: String, email: String, address: Address, geo: Geo, phone: String, website: String, company: Company) {
        self.id = id
        self.name = name
        self.userName = userName
        self.email = email
        self.address = address
        self.geo = geo
        self.phone = phone
        self.website = website
        self.company = company
    }
    override init(){
        super.init()
    }


}
