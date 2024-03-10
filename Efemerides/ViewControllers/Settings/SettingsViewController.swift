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
    private var isDarkModeEnabled: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = "Пользователь: \(person.fullname)"
        birthdate.text = "День рождения: \(person.birthdate)"
        currentEmail.text = "Э.почта: \(person.email)"
        customizeAppearance()
        updateDarkModeAppearance(isDarkModeEnabled)
        logOutButton.isHidden = true
    }
    
    func customizeAppearance() {
        darkModeSwitch.isOn = isDarkModeEnabled
    }
    func updateDarkModeAppearance(_ isDarkModeEnabled: Bool) {
        if isDarkModeEnabled {
                    view.backgroundColor = .white
                    userName.textColor = .black
                    birthdate.textColor = .black
                    currentEmail.textColor = .black
                    logOutButton.isHidden = true
                } else {
                    view.backgroundColor = .black
                    userName.textColor = .white
                    birthdate.textColor = .white
                    currentEmail.textColor = .white
                    logOutButton.isHidden = false
            }
        }
    
    @IBAction func toggleValueChanged(_ sender: UISwitch) {
        isDarkModeEnabled = sender.isOn
        UserDefaults.standard.set(isDarkModeEnabled, forKey: "DarkModeEnabled")
        updateDarkModeAppearance(isDarkModeEnabled)
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(
            title: "🖐️",
            message: "Вы хотите выйти?",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Да", style: .default, handler: { _ in
            self.dismiss(animated: true)
        }))
        alert.addAction(UIAlertAction(title: "Нет", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
}
