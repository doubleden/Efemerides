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
    @IBOutlet var notificationsSwitch: UISwitch!
    @IBOutlet var brightnessSlider: UISlider!
    
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
        emailTextField.text = person?.email
        notificationsSwitch.isOn = UserDefaults.standard.bool(forKey: "NotificationsEnabled")
        brightnessSlider.value = UserDefaults.standard.float(forKey: "ScreenBrightness")
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
    
    @IBAction func brightnessSliderChanged(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: "ScreenBrightness")
        UIScreen.main.brightness = CGFloat(sender.value)
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        UserDefaults.standard.set(birthDatePicker.date, forKey: "BirthDate")
        if let email = emailTextField.text {
            UserDefaults.standard.set(email, forKey: "Email")
        }
        
        let alert = UIAlertController(title: "Saved", message: "Your settings have been saved.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
        }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        if let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") {
                navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}
