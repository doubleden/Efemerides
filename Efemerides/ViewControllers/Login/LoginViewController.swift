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
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUITextFields()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        tabBarVC?.person = person
    }
    
    // forgot username = tag 0 || forgot password = tag 0
    @IBAction func forgotAction(_ sender: UIButton) {
    }
    
}

private extension LoginViewController {
    func setupUITextFields() {
        usernameTF.layer.borderWidth = 2
        passwordTF.layer.borderWidth = 2
        
        usernameTF.layer.cornerRadius = 5
        passwordTF.layer.cornerRadius = 5
        
        usernameTF.layer.borderColor = UIColor(named: "mainYellow")?.cgColor
        passwordTF.layer.borderColor = UIColor(named: "mainYellow")?.cgColor
    }
}
