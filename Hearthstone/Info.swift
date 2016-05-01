//
//  Info.swift
//  Hearthstone
//
//  Created by Cristian on 1/05/16.
//  Copyright © 2016 Cristian. All rights reserved.
//

import Foundation

class Info : NSObject {
    
    var patch       : String
    var classes     : Classes
    var sets        : Sets
    var types       : Types
    var factions    : Factions
    var qualities   : Qualities
    var races       : Races
    var locales     : Locales
    
    init(
        patch       : String,
        classes     : Classes,
        sets        : Sets,
        types       : Types,
        factions    : Factions,
        qualities   : Qualities,
        races       : Races,
        locales     : Locales) {
        self.patch = patch
        self.classes = classes
        self.sets = sets
        self.types = types
        self.factions = factions
        self.qualities = qualities
        self.races = races
        self.locales = locales
    }
}