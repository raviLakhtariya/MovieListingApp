//
//  Utility.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import Foundation
import Alamofire
class Utility {
    class func internetAvailable() -> Bool{
        return NetworkReachabilityManager()!.isReachable
    }
}
