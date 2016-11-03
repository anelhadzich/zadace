//
//  Address.swift
//  DesignPaterns
//
//  Created by El Capitan on 03/11/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

import UIKit

class Address: NSObject {
    var street: String?
    var suite: String?
    var city: String?
    var zipcode: String?
    var geo: Geo?
    
    init(street: String, suite: String, city: String, zipcode: String) {
        self.street = street
        self.suite = suite
        self.city = city
        self.zipcode = zipcode
    }
    
    override init(){
        super.init()
    }

}
