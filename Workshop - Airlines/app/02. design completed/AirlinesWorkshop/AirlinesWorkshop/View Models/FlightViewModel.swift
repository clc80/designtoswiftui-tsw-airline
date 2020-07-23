//
//  FlightViewModel.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import Foundation


class FlightViewModel: ObservableObject {
    @Published var tempInt = 1
    
    
    static func dates() -> [DateItem] {
        var dateItems: [DateItem] = []
        let monthFormatter        = DateFormatter()
        monthFormatter.dateFormat = "MMMM"
        
        let dayFormatter        = DateFormatter()
        dayFormatter.dateFormat = "dd"
        
        let displayFormatter        = DateFormatter()
        displayFormatter.dateFormat = "d MMM, yyyy"
        
        let currentDate = Date()
        let calendar = Calendar.current
        var months: [String] = []

        for i in 1...14 {
            if let date = calendar.date(byAdding: .day, value: i, to: currentDate) {
                let month = monthFormatter.string(from: date)
                let height = (10..<161).random
                let day = dayFormatter.string(from: date)
                let display = displayFormatter.string(from: date)
                months.append(month)
                dateItems.append(DateItem(day, height: height, month: month, displayDate: display))
            }
        }
        
       return dateItems
    }
}


public extension Range where Bound == Int {
    var random: Int {
        return lowerBound + Int(arc4random_uniform(UInt32(upperBound - lowerBound)))
    }
}

public extension ClosedRange where Bound == Int {
    var random: Int {
        return lowerBound + Int(arc4random_uniform(UInt32(upperBound - lowerBound + 1)))
    }
}

