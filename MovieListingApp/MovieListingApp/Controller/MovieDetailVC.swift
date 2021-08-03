//
//  MovieDetailVC.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import UIKit

class MovieDetailVC: UIViewController {

    //MARK:Outlet
    @IBOutlet weak var scrView: UIScrollView!
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var vwDetails: UIView!
    
    var navigationTitle : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initalSetup()
    }
    
    func initalSetup(){
        self.title = navigationTitle
        self.navigationController?.navigationBar.backItem?.backButtonTitle = " "
        self.view.backgroundColor = UIColor.ThemeColor.backgroundColor
        self.vwDetails.backgroundColor = UIColor.ThemeColor.backgroundColor
    }
    

}
