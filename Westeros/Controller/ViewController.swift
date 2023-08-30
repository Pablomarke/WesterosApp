//
//  ViewController.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 29/8/23.
//

import UIKit

private let segueIdentifier = "kSecondViewControllerSegue"

class ViewController: UIViewController {
   
    // MARK: - Outlets
    @IBOutlet weak var characterLabel: UILabel!
    
    // MARK: - Model
    var selectedHouse: House? {
        didSet {
            if let house = selectedHouse {
                characterLabel.text = house.name
            }
        }
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedHouse = .stark
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(didReceive),
            name: .didSelectCharacterNotification,
            object: nil
        )
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(
            self,
            name: .didSelectCharacterNotification,
            object: nil
        )
    }
    
    // MARK: - Segue
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == segueIdentifier,
           let secondViewController = segue.destination as? SecondViewController {
            secondViewController.delegate = self
        }
    }
    
    // MARK: - Notification
    @objc
    func didReceive(_ notification: Notification) {
        guard let info = notification.userInfo else { return }
        guard let character = info["Character"] as? Character else { return }
        selectedHouse = character.house
    }
}
