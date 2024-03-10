//
//  ResultViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

class ResultViewController: UIViewController {
    var foundEvent: Event?
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        image.layer.cornerRadius = image.frame.height / 10

        image.image = UIImage(named: foundEvent?.image ?? "")
        label.text = foundEvent?.description

        titleLabel.text = foundEvent?.title
    }
}
