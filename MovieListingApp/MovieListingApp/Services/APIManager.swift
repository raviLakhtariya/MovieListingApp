//
//  APIManager.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import Foundation

struct APIManager {
    
    func getAPIData<T:Decodable>(requestUrl:URL,resultType:T.Type,completionHandler:@escaping(_ result:T?)->Void){
        
        URLSession.shared.dataTask(with: requestUrl) { (responseData,HTTPURLResponse,error ) in
            if(error == nil && responseData != nil && responseData?.count != 0 ){
                let decoder = JSONDecoder()
                do{
                    let result = try decoder.decode(T.self,from:responseData!)
                    _ = completionHandler(result)
                }
                catch let error{
                    print("error occured while decoding")
                }
            }
        }.resume()
    }
}
