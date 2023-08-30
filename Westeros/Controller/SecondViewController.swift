//
//  SecondViewController.swift
//  Westeros
//
//  Created by Pablo Márquez Marín on 29/8/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - outlets
    @IBOutlet weak var houseStarkButton: UIButton!
    @IBOutlet weak var houseTargaryenButton: UIButton!
    
    // MARK: - Selected Deelegate
    var delegate: CharactherSelectedDelegate?
    
    // MARK: - Model
    private let characters: [Character] = [.danaerys, .jon]
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let danaerys = characters.first
        houseStarkButton.setTitle(danaerys?.name, for: .normal)
        
        let jon = characters.last
        houseTargaryenButton.setTitle(jon?.name, for: .normal)
        
    }
    
    // MARK: - Actions
    @IBAction func dipTapStarkButton(_ sender: Any) {
        if let danaerys = characters.first{
            //delegate?.didSelect(danaerys)
            NotificationCenter.default.post(
                name: .didSelectCharacterNotification,
                object: nil,
                userInfo: ["Character": danaerys]
            )
            dismiss(animated: true)
        }
    }
    @IBAction func dipTapTargaryenButton(_ sender: Any) {
        if let jon = characters.last{
            //delegate?.didSelect(jon)
            NotificationCenter.default.post(
                name: .didSelectCharacterNotification,
                object: nil,
                userInfo: ["Character": jon]
            )
            dismiss(animated: true)
        }
    }
}

extension Notification.Name {
    static let didSelectCharacterNotification = Notification.Name("didSelectCharacter")
}
