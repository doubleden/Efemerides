//
//  SettingsViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var notificationsSwitch: UISwitch!
    @IBOutlet weak var brightnessSlider: UISlider!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSettings()
        customizeAppearance()
    }
    
    func loadSettings() {
        darkModeSwitch.isOn = UserDefaults.standard.bool(forKey: "DarkModeEnabled")
        let birthDate = UserDefaults.standard.object(forKey: "BirthDate") as? Date ?? Date()
        birthDatePicker.date = birthDate
        emailTextField.text = UserDefaults.standard.string(forKey: "Email")
        notificationsSwitch.isOn = UserDefaults.standard.bool(forKey: "NotificationsEnabled")
        brightnessSlider.value = UserDefaults.standard.float(forKey: "ScreenBrightness")
    }
    
    func customizeAppearance() {
        darkModeSwitch.addTarget(self, action: #selector(darkModeSwitchChanged(_:)), for: .valueChanged)
    }
    
    @objc func darkModeSwitchChanged(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "DarkModeEnabled")
    }
    
    @IBAction func brightnessSliderChanged(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: "ScreenBrightness")
        UIScreen.main.brightness = CGFloat(sender.value)
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "LoggedInUser")
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
               let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
                sceneDelegate.window?.rootViewController = loginVC
        }
    }
}
