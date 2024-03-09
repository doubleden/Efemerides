//
//  SettingsViewController.swift
//  Efemerides
//
//  Created by Carlos Garcia on 7/3/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var userName: UILabel!
    @IBOutlet var birthdate: UILabel!
    @IBOutlet var darkModeSwitch: UISwitch!
    @IBOutlet var currentEmail: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeAppearance()
        logOutButton.isHidden = darkModeSwitch.isOn
        userName.text = "Пользователь: \(person.fullname)"
        birthdate.text = "День рождения: \(person.birthdate)"
        currentEmail.text = "Э.почта: \(person.email)"
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
            birthdate.textColor = .white
            currentEmail.textColor = .white
            
        } else {
            view.backgroundColor = .white
            userName.textColor = .black
            birthdate.textColor = .black
            currentEmail.textColor = .black
        }
    }
    
    @IBAction func toggleValueChanged(_ sender: UISwitch) {
        logOutButton.isHidden = !sender.isOn
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
