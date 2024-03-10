//
//  ViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTF.delegate = self
        passwordTF.delegate = self
        textFieldsUISetup()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == user.username,
              passwordTF.text == user.password else {
            showAlert(
                withTitle: "Неверный логин или пароль",
                andMessage: "Пожалуйста, введи корректные данные") {
                    guard self.passwordTF.text != "" else { return }
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        tabBarVC?.person = user.person
    }
    
    @IBAction func forgotAction(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(withTitle: "Привет!", andMessage: "твой логин \(user.username)")
        } else {
            showAlert(withTitle: "Только тихо это секрет...", andMessage: "твой пароль \(user.password)")
        }
    }
    
    private func textFieldsUISetup() {
        usernameTF.layer.borderWidth = 2
        passwordTF.layer.borderWidth = 2
        usernameTF.layer.cornerRadius = 5
        passwordTF.layer.cornerRadius = 5
        usernameTF.layer.borderColor = UIColor(named: "mainYellow")?.cgColor
        passwordTF.layer.borderColor = UIColor(named: "mainYellow")?.cgColor
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0 {
            passwordTF.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
