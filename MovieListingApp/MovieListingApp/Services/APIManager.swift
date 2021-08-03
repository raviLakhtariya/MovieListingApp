//
//  APIManager.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import Foundation
import Alamofire

class APIManager {
    
    class func getAPIData<T:Decodable>(requestUrl:URL,responseModel:T?,completionHandler:@escaping(_ result:T?)->Void){

        if !Utility.internetAvailable(){
            print("no Internent available")
            return
        }

        let header : HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        AF.request(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header).responseJSON { (response) in
            switch response.result {
            case .success(let json):
                print(response)
                do{
                    let decoder = JSONDecoder()
                    let result = try JSONSerialization.jsonObject(with: response.data!, options: [])
                    print(result)//try decoder.decode(T.self,from:response.data!)
                    _ = completionHandler(result as! T)
                }
                catch let error{
                    print(error)
                }
            case .failure(let error):
                print(error)

        }
    }
    }
    
//   class func getAPIData<T:Decodable>(requestUrl:URL,resultType:T.Type,completionHandler:@escaping(_ result:T?)->Void){
//    var request = URLRequest(url: requestUrl)
//    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
//    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
//    request.httpMethod = "GET"
//
//        URLSession.shared.dataTask(with: request) { (responseData,HTTPURLResponse,error ) in
//            if(error == nil && responseData != nil && responseData?.count != 0 ){
//                do{
//                    let decoder = JSONDecoder()
//                    var stringData = String(data: responseData!, encoding: .utf8)
//                    print(stringData)
//                    let result = try? decoder.decode(MovieListResponse.self,from:responseData!)
//                    _ = completionHandler(result as! T)
//                }
//                catch let error{
//                    print("error occured while decoding")
//                }
//            }
//        }.resume()
//    }
//    func postApiData<T:Decodable>(requestUrl: URL, requestBody: Data, resultType: T.Type, completionHandler:@escaping(_ result: T)-> Void)
//    {
//        var urlRequest = URLRequest(url: requestUrl)
//        urlRequest.httpMethod = "post"
//        urlRequest.httpBody = requestBody
//        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
//
//        URLSession.shared.dataTask(with: urlRequest) { (data, httpUrlResponse, error) in
//
//            if(data != nil && data?.count != 0)
//            {
//                do {
//
//                    let response = try JSONDecoder().decode(T.self, from: data!)
//                    _=completionHandler(response)
//                }
//                catch let decodingError {
//                    debugPrint(decodingError)
//                }
//            }
//        }.resume()
//    }
//}
}
