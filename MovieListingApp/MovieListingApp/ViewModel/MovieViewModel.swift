//
//  MovieViewModel.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import Foundation
//protocol MovieViewModelDelegate {
//    func didReceiveLoginResponse(movieListResponse: MovieListResponse?)
//}
struct MovieViewModel
{
   // var delegate : MovieViewModelDelegate?

    func getMovie(completion: @escaping (_ result:MovieListResponse?)->Void)
    {
        do{
            
            let urlString = APIURL.BaseUrl + APIURL.getMovieDiscoverUrl + APIKey.apiKey
            let requestUrl = URL(string: urlString)!
            var movieListResponse : MovieListResponse?
            APIManager.getAPIData(requestUrl: requestUrl,responseModel: movieListResponse) { (response) in
                _ = completion(movieListResponse)
            }
            
//            APIManager.getAPIData(requestUrl: requestUrl,resultType:MovieListResponse.self) { (response) in
//                _ = completion(movieListResponse)
//            }
        }catch let error{
            print(error)
        }
        
    }
}

