//
//  ResultViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

class ResultViewController: UIViewController {
    var foundEvent: Event?
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        guard let foundEvent = foundEvent else {
            return
        }

        let titleLabel = UILabel()
        titleLabel.text = foundEvent.title

        let descriptionLabel = UILabel()
        descriptionLabel.text = foundEvent.description

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
    }
}
