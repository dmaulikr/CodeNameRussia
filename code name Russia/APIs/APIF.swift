//
//  APIF.swift
//  code name Russia
//
//  Created by Emil Karimov on 14.07.17.
//  Copyright © 2017 Emil Karimov. All rights reserved.
//

import Foundation
import Alamofire


class APIFour {
    static let shared = APIFour()
    
    let token = "EKIVXT5WDTZU1GXL45WSFW5EG3UCG2KW5RHEWFJKZCWDQWMN&v=20170714"
    let url   = URL(string: "https://api.foursquare.com/v2/venues/explore")!
    
    func getNearbyPLaces() {
        
        let parameters: Parameters = ["ll": "40.7,-74",
                          "llAcc": 500.0,
                          "altAcc": 500.0,
                          "oauth_token": token,
                          "v": "20170714",]
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (responseJSON) in
            if responseJSON.result.isSuccess {
                do {
                    if let responseJSON = try JSONSerialization.jsonObject(with: responseJSON.data!, options: []) as? [String: Any] {
                        print(responseJSON)
//                        let plases = Place {
//                        completionHandler(todo, nil)
                    } else {
                        
                    }
                } catch {
                    return
                }
            } else {
                print(responseJSON.error?.localizedDescription ?? "")
                
            }
        }
        
        
        
    }
}
