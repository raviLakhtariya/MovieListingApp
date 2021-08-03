/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/


import Foundation
struct MovieResults : Codable {
	var adult : Bool?
	var backdrop_path : String?
	var genre_ids : [Int]?
	var id : Int?
	var original_language : String?
	var original_title : String?
	var overview : String?
	var popularity : Double?
	var poster_path : String?
	var release_date : String?
	var title : String?
	var video : Bool?
	var vote_average : Double?
	var vote_count : Int?

	enum CodingKeys: String, CodingKey {

		case adult = "adult"
		case backdrop_path = "backdrop_path"
		case genre_ids = "genre_ids"
		case id = "id"
		case original_language = "original_language"
		case original_title = "original_title"
		case overview = "overview"
		case popularity = "popularity"
		case poster_path = "poster_path"
		case release_date = "release_date"
		case title = "title"
		case video = "video"
		case vote_average = "vote_average"
		case vote_count = "vote_count"
	}
    init(){
        
    }

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
		backdrop_path = try values.decodeIfPresent(String.self, forKey: .backdrop_path)
		genre_ids = try values.decodeIfPresent([Int].self, forKey: .genre_ids)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		original_title = try values.decodeIfPresent(String.self, forKey: .original_title)
		overview = try values.decodeIfPresent(String.self, forKey: .overview)
		release_date = try values.decodeIfPresent(String.self, forKey: .release_date)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		video = try values.decodeIfPresent(Bool.self, forKey: .video)
		
	}

}

/*
public class MovieResults {
    public var adult : Bool?
    public var backdrop_path : String?
    public var genre_ids : Array<Int>?
    public var id : Int?
    public var original_language : String?
    public var original_title : String?
    public var overview : String?
    public var popularity : Double?
    public var poster_path : String?
    public var release_date : String?
    public var title : String?
    public var video : Bool?
    public var vote_average : Double?
    public var vote_count : Int?

    public class func modelsFromDictionaryArray(array:Array<Any>) -> [MovieResults]
    {
        var models:[MovieResults] = []
        for item in array
        {
            models.append(MovieResults(dictionary: item as! Dictionary<String, Any>)!)
        }
        return models
    }



    required public init?(dictionary: Dictionary<String, Any>) {

        adult = dictionary["adult"] as? Bool
        backdrop_path = dictionary["backdrop_path"] as? String
//        if (dictionary["genre_ids"] != nil) { genre_ids = genre_ids.modelsFromDictionaryArray(dictionary["genre_ids"] as! Array<Any>) }
        id = dictionary["id"] as? Int
        original_language = dictionary["original_language"] as? String
        original_title = dictionary["original_title"] as? String
        overview = dictionary["overview"] as? String
        popularity = dictionary["popularity"] as? Double
        poster_path = dictionary["poster_path"] as? String
        release_date = dictionary["release_date"] as? String
        title = dictionary["title"] as? String
        video = dictionary["video"] as? Bool
        vote_average = dictionary["vote_average"] as? Double
        vote_count = dictionary["vote_count"] as? Int
    }

        
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
    public func dictionaryRepresentation() -> Dictionary<String, Any> {

        var dictionary = Dictionary<String, Any>()
        dictionary["adult"] = self.adult
        dictionary["backdrop_path"] = self.backdrop_path
        dictionary["id"] = self.id
        dictionary["original_language"] = self.original_language
        dictionary["original_title"] = self.original_title
        dictionary["overview"] = self.overview
        dictionary["popularity"] = self.popularity
        dictionary["poster_path"] = self.poster_path
        dictionary["release_date"] = self.release_date
        dictionary["video"] = self.video
        dictionary["vote_average"]  = self.vote_average
        dictionary["vote_count"] = self.vote_count
    

        return dictionary
    }

}
*/
