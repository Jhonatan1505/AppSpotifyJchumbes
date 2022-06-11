//
//  HomeViewController.swift
//  AppSpotifyJchumbes
//
//  Created by MAC36 on 4/06/22.
//

import UIKit

class HomeViewController: UIViewController{

    let searchViewModel = SearchViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var uiSearchBar: UISearchBar!
    
    var saveTextSearch: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearch()
        setUpTable()
        Task {
            await setUpData()
        }
    }
    
    func setUpSearch() {
        uiSearchBar.delegate = self
    }
    
    func setUpTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setUpData() async {
        let _ = await searchViewModel.getMusicsByName(name: "rock")
        tableView.reloadData()
    }
    
}

extension HomeViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        saveTextSearch = searchText
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

        print(saveTextSearch)

        self.view.endEditing(true)
        Task {
            let _ = await searchViewModel.getMusicsByName(name: saveTextSearch)
            tableView.reloadData()
        }
        
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchViewModel.searchResult?.items.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemSearchTableViewCell
        
        let row = searchViewModel.searchResult?.items[indexPath.row].album
        
        cell.lblTitle.text = row?.name
        cell.lblDescription.text = row?.artists[0].name
        cell.coverImage.sd_setImage(with: URL(string: row?.images[0].url ?? ""))
        
        return cell
    }
}
