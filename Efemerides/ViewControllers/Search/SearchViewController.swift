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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func findButtonTapped(_ sender: Any) {
        guard let selectedDate = datePicker?.date else {
            print("datePicker is nil or its date property is nil")
            return
        }
        
        let resultsVC = ResultViewController()
        resultsVC.selectedDate = selectedDate
        
        performSegue(withIdentifier: "ShowResultsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResultsSegue" {
            if let resultsVC = segue.destination as? ResultViewController {
                resultsVC.selectedDate = datePicker.date
            }
        }
    }
}
