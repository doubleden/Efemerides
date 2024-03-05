//
//  User.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

import Foundation

struct User {
    
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(username: "User", password: "1111", person: Person.getPerson() )
    }
}

struct Person {
    let name: String
    let surname: String
    let birthdate: String
    
    static func getPerson() -> Person {
        Person(
            name: "Alexei",
            surname: "Efimov",
            birthdate: "01.01.1988"
        )
    }
}
