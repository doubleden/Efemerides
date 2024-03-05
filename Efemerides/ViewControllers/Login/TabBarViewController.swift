//
//  TabBarViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var person: Person!
    
    private let events = Event.getEvents()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach { view in
            switch view {
            case let welcomeVC as WelcomeViewController:
                welcomeVC.person = person
                welcomeVC.events = events
            case let searchVC as SearchViewController:
                searchVC.events = events
            case let settingsVC as SettingsViewController:
                settingsVC.person = person
            default:
                break
            }
        }
    }

}
