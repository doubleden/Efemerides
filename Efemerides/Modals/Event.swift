//
//  Event.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//
import Foundation

struct Event {
    let title: String
    let description: String
    let Date: String
    
    static func getEvents() -> [Event] {
        let data = DataStore.shared
        var result: [Event] = []
        
        for event in data.events {
            result.append(
                Event(
                    title: event.title,
                    description: event.description,
                    Date: event.date
                )
            )
        }
        
        return result
    }
}
