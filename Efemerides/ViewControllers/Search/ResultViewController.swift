//
//  ResultViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

class ResultViewController: UIViewController {
    var selectedDate: Date?
    var datastore: DataStore!
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
         guard let selectedDate = selectedDate else {
             return
         }

         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "dd-MM-yyyy"
         let selectedDateString = dateFormatter.string(from: selectedDate)

         let allEvents: [Event] = []

         let eventsForSelectedDate = allEvents.filter {
             let eventDateString = "\($0.day)-\($0.month)-\($0.year)"
             return eventDateString == selectedDateString
         }

         for event in eventsForSelectedDate {

             let titleLabel = UILabel()
             titleLabel.text = event.title

             let descriptionLabel = UILabel()
             descriptionLabel.text = event.description

             stackView.addArrangedSubview(titleLabel)
             stackView.addArrangedSubview(descriptionLabel)
         }
     }
 }
