//
//  WelcomeViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    var person: Person!
    var events: [Event]!
    
    @IBOutlet weak var welcomeUserLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var eventsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(person.fullname)"
        birthdayLabel.text = "Your Birthday is on \(person.birthdate)"
        if let eventInfo = findEvent(for: person.birthdate) {
            let (title, description, day, month, year) = eventInfo
            eventsLabel.text = "\(day).\(month).\(year)\n \(title)\n\(description)"
        }
        
        func findEvent(
            for birthdate: String
        ) -> (
            title: String,
            description: String,
            day: String,
            month: String,
            year: String
        )? {
            let events = Event.getEvents()
            
            let birthdateComponents = birthdate.split(
                separator: "."
            )
            let birthdateDay = String(
                birthdateComponents[0]
            )
            let birthdateMonth = String(
                birthdateComponents[1]
            )
            
            if let matchingEvent = events.first(where: {
                event in
                let eventDay = event.day
                let eventMonth = event.month
                return eventDay == birthdateDay && eventMonth == birthdateMonth
            }) {
                return (
                    matchingEvent.title,
                    matchingEvent.description,
                    matchingEvent.day,
                    matchingEvent.month,
                    matchingEvent.year
                )
            }
            return nil
        }
    }
}
