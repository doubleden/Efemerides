//
//  EventSearchable.swift
//  Efemerides
//
//  Created by Denis Denisov on 7/3/24.
//

protocol EventSearchable {
    var events: [Event]! { get }
}

extension EventSearchable {
    func findEvent(in events: [Event], byDay: String, andMonth: String) -> Event? {
        
        var low = 0
        var high = events.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let currentEvent = events[mid]
            
            if currentEvent.month == andMonth && currentEvent.day == byDay {
                return currentEvent
            } else if currentEvent.month < andMonth ||
                      (currentEvent.month == andMonth && currentEvent.day < byDay) {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return nil
    }
}
