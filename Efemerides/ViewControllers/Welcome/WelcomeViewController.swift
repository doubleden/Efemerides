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
    
    @IBOutlet weak var welcomeUserLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var eventsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(person.fullname)"
        birthdayLabel.text = "Your Birthday is on \(person.birthdate)"
        
        let event = findEvent(in: events, byDay: person.dayOfBirth, andMonth: person.monthOfBirth)
        
        eventsLabel.text = "\(event?.day ?? "").\(event?.month ?? "").\(event?.year ?? "")\n \(event?.title ?? "")\n \(event?.description ?? "")"
    }
}
