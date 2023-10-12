//
//  ViewController.swift
//  MagicTravel
//
//  Created by Rolan Marat on 1/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countriesTableView: UITableView!
    
    var countries: [String] = ["Germany", "France", "China", "Brazil", "Australia", "India", "Canada", "USA", "Mexico", "Ghana", "Egypt", "Argentina"]
    
    var continentCountry: [String: String] = ["Germany" : "Europe", "France": "Europe", "China": "Asia", "Brazil": "South America", "Australia": "Australia", "India": "Asia", "Canada": "North America", "USA": "North America", "Mexico": "North America", "Ghana": "Africa", "Egypt": "Africa", "Argentina": "South America"]
    
    struct Constants {
       static let cellIdentifier = "MagicCountryCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countriesTableView.register(UITableViewCell.self,
                                    forCellReuseIdentifier: Constants.cellIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)

        var cellContentConfiguration = tableViewCell.defaultContentConfiguration()
        
        let countryName = countries[indexPath.row]
        cellContentConfiguration.text = countryName
        cellContentConfiguration.secondaryText = continentCountry[countryName] ?? ""
        tableViewCell.contentConfiguration = cellContentConfiguration

        return tableViewCell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        print("user tapped on cell at \(indexPath) indexPath")
        tableView.deselectRow(at: indexPath,
                              animated: true)

        performSegue(withIdentifier: "showCountryDetails",
                     sender: self)
    }
}
