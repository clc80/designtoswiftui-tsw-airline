//
//  LocationItem.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/19/20.
//

import Foundation
import Combine

struct Location: Decodable, Identifiable {
    var id: Int
    var code: String
    var name: String
    var state: String
    var city: String
    
    static let defaultDepartureLocation = Self(id: 0, code: "XXX", name: "Airport Name Here", state: "XX", city: "")
    static let defaultArrivalLocation = Self(id: 0, code: "XXX", name: "Airport Name Here", state: "XX", city: "")
}
