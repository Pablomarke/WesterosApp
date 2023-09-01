//
//  CharacterListCollectionViewController.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 31/8/23.
//

import UIKit

class CharacterListCollectionViewController: UICollectionViewController {
    // MARK: - Model
    private let characters: [Character] = [.jon, .danaerys, .tyrion]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
 
// MARK: - Data Source
extension CharacterListCollectionViewController {
    override func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        characters.count
    }
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CharacterCollectionViewCell.identifier,
                                                            for: indexPath
         ) as? CharacterCollectionViewCell else {
             return UICollectionViewCell()
         }
        cell.configure(with: characters[indexPath.row])
        return cell
    }
    
}
