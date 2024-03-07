//
//  EventSearchable.swift
//  Efemerides
//
//  Created by Denis Denisov on 7/3/24.
//

protocol EventSearchable {
    func findEvent(in events: [Event], by day: String, and month: String) -> Event
}

extension EventSearchable {
    func findEvent(in events: [Event], by day: String, and month: String) -> Event? {
        
        var low = 0
        var high = events.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let currentEvent = events[mid]
            
            if currentEvent.month == month && currentEvent.day == day {
                return currentEvent
            } else if currentEvent.month < month || (currentEvent.month == month && currentEvent.day < day) {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return nil
    }
}
