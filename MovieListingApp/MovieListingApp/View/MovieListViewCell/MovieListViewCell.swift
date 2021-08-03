//
//  MovieListViewCell.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import UIKit

class MovieListViewCell: UITableViewCell {

    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var lblMovieTitle: UILabel!
    @IBOutlet weak var lblMovieDate: UILabel!
    @IBOutlet weak var lblMovieDesc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
