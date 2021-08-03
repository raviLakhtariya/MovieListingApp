



import Foundation
struct MovieListResponse : Codable {
	var page : Int?
	var results : [MovieResults]?
	var total_pages : Int?
	var total_results : Int?

	enum CodingKeys: String, CodingKey {

		case page = "page"
		case results = "results"
		case total_pages = "total_pages"
		case total_results = "total_results"
	}

    init(){

    }
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		page = try values.decodeIfPresent(Int.self, forKey: .page)
		results = try values.decodeIfPresent([MovieResults].self, forKey: .results)
		total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
		total_results = try values.decodeIfPresent(Int.self, forKey: .total_results)
	}

}
/*
import Foundation
 


public class MovieListResponse {
    public var page : Int?
    public var results : Array<MovieResults>?
    public var total_pages : Int?
    public var total_results : Int?


    public class func modelsFromDictionaryArray(array:Array<Any>) -> [MovieListResponse]
    {
        var models:[MovieListResponse] = []
        for item in array
        {
            models.append(MovieListResponse(dictionary: item as! Dictionary<String,Any> as NSDictionary)!)
        }
        return models
    }

    required public init?(dictionary: NSDictionary) {

        page = dictionary["page"] as? Int
        if (dictionary["results"] != nil) { results = MovieResults.modelsFromDictionaryArray(array: dictionary["results"] as! Array<Any>) }
        total_pages = dictionary["total_pages"] as? Int
        total_results = dictionary["total_results"] as? Int
    }

    public func dictionaryRepresentation() -> Dictionary<String,Any> {

        var dictionary = Dictionary<String,Any>()
        dictionary["page"] = self.page
        dictionary["total_pages"] = self.total_pages
        dictionary["total_results"] = self.total_results
//        dictionary.setValue(self.page, forKey: "page")
//        dictionary.setValue(self.total_pages, forKey: "total_pages")
//        dictionary.setValue(self.total_results, forKey: "total_results")

        return dictionary
    }

}

*/
