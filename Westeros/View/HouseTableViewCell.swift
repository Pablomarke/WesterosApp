//
//  HouseTableViewCell.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 31/8/23.
//

import UIKit

class HouseTableViewCell: UITableViewCell {

    static let identifier = "HouseTableViewCell"
    @IBOutlet weak var houseNameLabel: UILabel!
    
    @IBOutlet weak var sigilLabel: UILabel!
    
    @IBOutlet weak var sigilImageView: UIImageView!
    
    func configure(with house: House) {
        sigilImageView.image = house.sigil.image
        houseNameLabel.text = house.name
        sigilLabel.text = house.sigil.words
    }
}
