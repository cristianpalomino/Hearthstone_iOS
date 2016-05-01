//
//  APIClient.swift
//  Hearthstone
//
//  Created by Cristian on 1/05/16.
//  Copyright © 2016 Cristian. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class APIClient : NSObject {
    
    struct URLs {
        static let Info = "https://omgvamp--hearthstone--v1-p-mashape-com-ul030oo6rxz0.runscope.net/info"
    }
    
    private func authorizationHeader() -> [String: String]? {
        let headers = ["X-Mashape-Key": "BRGxteEFzFmshQItCIFu8g5ntVrKp15JpkFjsnr8kbh1losdFD",
                      "Accept": "application/json"]
        return headers
    }
    
    func fetchInfo() {
        Alamofire.request(
            .GET,
            URLs.Info,
            parameters: nil,
            encoding: .JSON,
            headers: self.authorizationHeader()
            ).responseJSON {
                response in
                switch response.result {
                    case .Success(let value):
                        let json = JSON(value)
                        
                        let patch                   = json["patch"].stringValue
                        let jsonArrayClasses        = json["classes"].arrayValue
                        let jsonArraySets           = json["sets"].arrayValue
                        let jsonArrayTypes          = json["types"].arrayValue
                        let jsonArrayFactions       = json["factions"].arrayValue
                        let jsonArrayQualities      = json["qualities"].arrayValue
                        let jsonArrayRaces          = json["races"].arrayValue
                        let jsonArrayLocales        = json["locales"].arrayValue
                        
                        let info = Info.init(
                            patch: patch,
                            classes: Parser.ParseClasses(jsonArrayClasses),
                            sets: Parser.ParseSets(jsonArraySets),
                            types: Parser.ParseTypes(jsonArrayTypes),
                            factions: Parser.ParseFactions(jsonArrayFactions),
                            qualities: Parser.ParseQualities(jsonArrayQualities),
                            races: Parser.ParseRaces(jsonArrayRaces),
                            locales: Parser.ParseLocales(jsonArrayLocales))
                    
                        Session.current.info = info
                    
                    case .Failure(let error):
                        print("Info Error : \(error.localizedDescription)")
                }
        }
    }
}