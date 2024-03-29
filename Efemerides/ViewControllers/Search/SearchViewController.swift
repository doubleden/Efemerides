//
//  SearchViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class SearchViewController: UIViewController, EventSearchable {
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var dateView: UIView!
    
    var events: [Event]!
    private var foundEvent: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateView.layer.cornerRadius = 10
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        
        let date = datePicker.date
        let calendar = Calendar.current
        
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        
        let formatter = NumberFormatter()
        formatter.minimumIntegerDigits = 2
        
        let formattedDay = formatter.string(from: NSNumber(value: day))
        let formattedMonth = formatter.string(from: NSNumber(value: month))
                    
        foundEvent = findEvent(in: events, byDay: formattedDay ?? "", andMonth: formattedMonth ?? "")
        
        if let foundEvent = foundEvent {
            let storyboard = UIStoryboard(name: "SearchViewController", bundle: nil)
            if let resultVC = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
                resultVC.foundEvent = foundEvent
                navigationController?.pushViewController(resultVC, animated: true)
            }
        }
    }
}
