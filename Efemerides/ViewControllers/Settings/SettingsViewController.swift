//
//  SettingsViewController.swift
//  Efemerides
//
//  Created by Carlos Garcia on 7/3/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var userName: UILabel!
    @IBOutlet var darkModeSwitch: UISwitch!
    @IBOutlet var birthDatePicker: UIDatePicker!
    @IBOutlet var emailTextField: UITextField!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSettings()
        customizeAppearance()
    }
    
    func loadSettings() {
        darkModeSwitch.isOn = UserDefaults.standard.bool(forKey: "DarkModeEnabled")
        let birthDate = UserDefaults.standard.object(forKey: "BirthDate") as? Date ?? Date()
        birthDatePicker.date = birthDate
        userName.text = "User: \(person.fullname)"
        //   emailTextField.text = person?.email
    }
    
    func customizeAppearance() {
        darkModeSwitch.addTarget(self, action: #selector(darkModeSwitchChanged(_:)), for: .valueChanged)
    }
    
    @objc func darkModeSwitchChanged(_ sender: UISwitch) {
        let isDarkModeEnabled = sender.isOn
        UserDefaults.standard.set(isDarkModeEnabled, forKey: "DarkModeEnabled")
        updateDarkModeAppearance(isDarkModeEnabled)
    }
    
    func updateDarkModeAppearance(_ isDarkModeEnabled: Bool) {
        if isDarkModeEnabled {
            view.backgroundColor = .black
            userName.textColor = .white
        } else {
            view.backgroundColor = .white
            userName.textColor = .black
        }
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        let selectedDate = birthDatePicker.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        var selectedDateString = dateFormatter.string(from: selectedDate)
        selectedDateString = person.birthdate
        birthDatePicker.backgroundColor = UIColor.green
        if let welcomeVC = storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") {
            navigationController?.pushViewController(welcomeVC, animated: true)
        }
    }
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        if let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") {
                navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}
