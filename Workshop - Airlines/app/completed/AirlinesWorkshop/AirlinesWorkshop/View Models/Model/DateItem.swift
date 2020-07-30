//
//  DateItem.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/6/20.
//

import SwiftUI

struct DateItem: Identifiable, Codable {
    var title: String
    var height: Int
    var month: String
    var displayDate: String
    
    var id = UUID().uuidString
    
    init(_ title: String, height: Int, month: String, displayDate: String) {
        self.title = title
        self.height = height
        self.month = month
        self.displayDate = displayDate
    }
    
    static let defaultArrivalDate = Self("", height: 0, month: "", displayDate: "")
    static let defaultDepartureDate = Self("", height: 0, month: "", displayDate: "")
}
