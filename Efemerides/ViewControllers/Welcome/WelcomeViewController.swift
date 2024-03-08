//
//  WelcomeViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class WelcomeViewController: UIViewController, EventSearchable {
    
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var eventsLabel: UITextView!
    @IBOutlet var eventsScrollView: UIScrollView!
    
    var person: Person!
    var events: [Event]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsScrollView.layer.cornerRadius = 10
        
        welcomeUserLabel.text = "Welcome, \(person.fullname)!"
        birthdayLabel.text = "Your Birthday is on \(person.birthdate)"
        
        let event = findEvent(in: events, byDay: person.dayOfBirth, andMonth: person.monthOfBirth)
        eventsLabel.text = "В этот день было - \(event?.title ?? "")\n\n\(event?.description ?? "")"
    }
}
