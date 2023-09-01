//
//  HouseListTableViewController.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 31/8/23.
//

import UIKit

class HouseListTableViewController: UITableViewController {
    
    private let houses: [House] = [.lannister, .targaryen, .stark]
    
    //MARK: - lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Houses"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension HouseListTableViewController {
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        houses.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HouseTableViewCell.identifier,
            for: indexPath
        ) as? HouseTableViewCell else {
            return UITableViewCell()
        }
        let house = houses[indexPath.row]
        cell.configure(with: house)
        return cell
    }
}

