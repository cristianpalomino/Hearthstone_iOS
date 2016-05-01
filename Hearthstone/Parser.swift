//
//  Parser.swift
//  Hearthstone
//
//  Created by Cristian on 1/05/16.
//  Copyright © 2016 Cristian. All rights reserved.
//

import Foundation
import SwiftyJSON

class Parser {
    
    class func ParseClasses(jsonArray: [JSON]) -> Classes {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Classes.init(classes: array)
    }

    class func ParseSets(jsonArray: [JSON]) -> Sets {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Sets.init(sets: array)
    }
    
    class func ParseTypes(jsonArray: [JSON]) -> Types {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Types.init(types: array)
    }
    
    class func ParseFactions(jsonArray: [JSON]) -> Factions {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Factions.init(factions: array)
    }
    
    class func ParseQualities(jsonArray: [JSON]) -> Qualities {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Qualities.init(qualities: array)
    }
    
    class func ParseRaces(jsonArray: [JSON]) -> Races {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Races.init(races: array)
    }
    
    class func ParseLocales(jsonArray: [JSON]) -> Locales {
        var array : [String] = []
        for item in jsonArray {
            array.append(item.stringValue)
        }
        return Locales.init(locales: array)
    }
}