//
//  WelcomeViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class WelcomeViewController: UIViewController, EventSearchable {
    
    var person: Person!
    var events: [Event]!
    
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var eventsLabel: UITextView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var miniView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(person.fullname)!"
        birthdayLabel.text = "Your Birthday is on \(person.birthdate)"
        
        miniView.layer.cornerRadius = 10
        miniView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 10
        
        let event = findEvent(in: events, byDay: person.dayOfBirth, andMonth: person.monthOfBirth)
        
        imageView.image = UIImage(named: event?.image ?? "")
       
        
        eventsLabel.text = "\(event?.year ?? "")-ом в этот же день было...\n\n\(event?.title ?? "")\n\n\(event?.description ?? "")"
    }
}
