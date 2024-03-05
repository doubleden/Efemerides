//
//  ViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarViewController
        tabBarVC?.person = person
    }

}

