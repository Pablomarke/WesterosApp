//
//  CharacterCollectionViewCell.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 31/8/23.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    // MARK: Outlets
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    static let identifier = "CharacterCollectionViewCell"
    
    // MARK: Configuration
    func configure(with character: Character) {
        characterNameLabel.text = character.fullName
        characterImageView.image = character.image
    }
    
}
