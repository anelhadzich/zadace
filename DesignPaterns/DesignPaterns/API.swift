//
//  API.swift
//  DesignPaterns
//
//  Created by Anel Hadzic on 03/11/16.
//  Copyright © 2016 El Capitan. All rights reserved.
//

import UIKit

class API: NSObject {
    static var shared = API()
    private override init() {
        super.init()
    }
    func refreshUsers(){
        let serverComunicationInstance = ServerCommunication()
        serverComunicationInstance.refreshUsers()
    }

}
