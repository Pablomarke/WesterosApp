//
//  ViewController+CharacterSelectedDelegate.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 30/8/23.
//

import Foundation

// MARK: House Selected Delegate

extension ViewController: CharactherSelectedDelegate {
    func didSelect(_ character: Character) {
        selectedHouse = character.house
    }
    
    
}

