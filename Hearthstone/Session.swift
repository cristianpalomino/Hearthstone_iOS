//
//  Session.swift
//  Hearthstone
//
//  Created by Cristian on 1/05/16.
//  Copyright © 2016 Cristian. All rights reserved.
//

import Foundation

class Session : NSObject {

    var info : Info! {
        didSet {
            NSNotificationCenter.defaultCenter().postNotificationName(Constants.NotificationKey.InfoUpdated, object: nil)
        }
    }
    
    static let current = Session()
    private override init() {}
}