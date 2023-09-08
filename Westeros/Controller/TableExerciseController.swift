//
//  TableExerciseController.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 8/9/23.
//

import Foundation
import UIKit

class TableExerciseController: UIViewController {
    
    @IBOutlet weak var tableExercise: UITableView!
    
    private let houses: [House] = [.lannister, .targaryen, .stark]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        title = "Houses"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableExercise.dataSource = self
        
    }
    
}
extension TableExerciseController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        houses.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
