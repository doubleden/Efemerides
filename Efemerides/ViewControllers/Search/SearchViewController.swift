//
//  SearchViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

class SearchViewController: UIViewController, EventSearchable {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var events: [Event]!
    private var foundEvent: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        guard let selectedDate = datePicker?.date else {
            print("datePicker is nil or its date property is nil")
            return
        }
        
        let allEvents = Event.getEvents()
        
        foundEvent = allEvents.first { event in
            let eventDateString = "\(event.day).\(event.month).\(event.year)"
            let selectedDateString = DateFormatter.localizedString(from: selectedDate, dateStyle: .short, timeStyle: .none)
            return eventDateString == selectedDateString
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let resultsVC = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
            resultsVC.foundEvent = foundEvent

            navigationController?.pushViewController(resultsVC, animated: true)
        }
    }
}
