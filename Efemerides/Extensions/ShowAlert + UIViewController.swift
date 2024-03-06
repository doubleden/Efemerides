//
//  ShowAlert + UIViewController.swift
//  Efemerides
//
//  Created by Denis Denisov on 6/3/24.
//

import UIKit

extension UIViewController {
    
    private func showAlert(
        withTitle tittle: String,
        andMessage message: String,
        completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: tittle,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "Ok", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}
