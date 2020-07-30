//
//  FlightViewModel.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import Foundation
import SwiftUI
import Combine

enum FlightType: Int {
    case roundTrip
    case oneWay
    case multiCity
}

class FlightViewModel: ObservableObject {
    
    // Data is used for Data Example in class
    @Published var selectedCardColor: UIColor = .baseDarkBlue
    @Published var selectedCardColorType = 0
    
    var colors: [Color] = [
                  .baseDarkBlue,
                  .baseLightBlue,
                  .black,
                  .red,
                  .pink,
                  .purple,
                  .gray]
    
    var uiColors: [UIColor] = [.baseDarkBlue,
                             .baseLightBlue,
                             .black,
                             .red,
                             .systemPink,
                             .purple,
                             .gray]
    
    // Data is used for Airplane Ticketing App

    
    @Published var isDatePickerVisible = false
    @Published var isSettingArrivalLocation = false
    @Published var isSettingArrivalDate = false
    @Published var isArrivalLocationSet = false
    @Published var isDepartureLocationSet = false
    
    @Published var passengers = 1
    @Published var selectedFlightType:FlightType = .roundTrip
    
    @Published var departureLocation = Location.defaultDepartureLocation
    @Published var arrivalLocation = Location.defaultArrivalLocation
    @Published var departureDate = DateItem.defaultDepartureDate
    @Published var arrivalDate = DateItem.defaultArrivalDate
    @Published var items: [Location] = []

    
    @Published var dates: [DateItem] = FlightViewModel.dates()
    
    var leftSeatRows: [String] = ["A", "B", "C"]
    var rightSeatRows: [String] = ["D", "E", "F"]
    var leftRow = 1
    var rightRow = 1
    
    var flightTypes: [FlightType] = [FlightType.roundTrip, FlightType.oneWay, FlightType.multiCity]
    
    var todaysDate: String = {
        let currentDate = Date()
        let displayFormatter        = DateFormatter()
        displayFormatter.dateFormat = "d MMM, yyyy"
        
        return displayFormatter.string(from: currentDate)
    }()
    
    var buttons: [ButtonItem] = {
       return [
            ButtonItem(image: "arrow.right", title: "ONE", subtitle: "WAY"),
            ButtonItem(image: "arrow.right.arrow.left", title: "ROUND", subtitle: "TRIP"),
            ButtonItem(image: "arrow.triangle.2.circlepath", title: "MULTI", subtitle: "CITY")
        ]
    }()
    
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
