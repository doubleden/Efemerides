//
//  ResultViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var miniVuew: UIView!
    
    var foundEvent: Event?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        miniVuew.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        image.layer.cornerRadius = image.frame.height / 10

        image.image = UIImage(named: foundEvent?.image ?? "")
        text.text = foundEvent?.description

        label.text = foundEvent?.title
    }
}
