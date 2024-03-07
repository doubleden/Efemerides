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
    
    let day: String
    let month: String
    let year: String
    
    var birthdate: String {
        "\(day).\(month).\(year)"
    }
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alexei",
            surname: "Efimov",
            day: "05",
            month: "01",
            year: "1998"
        )
    }
}
