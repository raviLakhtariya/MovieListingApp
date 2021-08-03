//
//  ViewController.swift
//  MovieListingApp
//
//  Created by ravi lakhtariya on 03/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moviewListTblView: UITableView!
    private var movieViewModel = MovieViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSetup()
    }
    func initialSetup(){
        moviewListTblView.register( UINib.init(nibName: "MovieListViewCell", bundle: nil), forCellReuseIdentifier: "MovieListViewCell")
        moviewListTblView.tableFooterView = UIView()
        self.moviewListTblView.dataSource = self
                       self.moviewListTblView.delegate = self
                       self.moviewListTblView.reloadData()
        callMoviewListAPI()
    }
    
    func callMoviewListAPI(){
        movieViewModel.getMovie { response in
            DispatchQueue.main.async {
                print(response)
                self.moviewListTblView.dataSource = self
                self.moviewListTblView.delegate = self
                self.moviewListTblView.reloadData()
                
            }
            
        }
    }
    
    func navigateToOTherScreen(){
        let vc : MovieDetailVC = (self.storyboard?.instantiateViewController(withIdentifier: "MovieDetailVC") as? MovieDetailVC)!
        self.navigationController?.pushViewController(vc, animated: true)
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : MovieListViewCell = moviewListTblView.dequeueReusableCell(withIdentifier: "MovieListViewCell") as! MovieListViewCell
            
            return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        navigateToOTherScreen()
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
