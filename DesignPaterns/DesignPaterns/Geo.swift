//
//  Geo.swift
//  DesignPaterns
//
//  Created by El Capitan on 03/11/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

import UIKit

class Geo: NSObject {
    var lat: String?
    var lon: String?
    
    init(lat: String, lon: String) {
        self.lat = lat
        self.lon = lon
    }
    
    override init(){
        super.init()
    }


}
