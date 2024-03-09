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
        User(username: "User", password: "1111", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let email: String
    
    let dayOfBirth: String
    let monthOfBirth: String
    let yearOfBirth: String
    
    var birthdate: String {
        "\(dayOfBirth).\(monthOfBirth).\(yearOfBirth)"
    }
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alexei",
            surname: "Efimov",
            email: "classDJ@mail.ru",
            dayOfBirth: "05",
            monthOfBirth: "01",
            yearOfBirth: "1998"
        )
    }
}
