//
//  AirlinesWorkshopApp.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/6/20.
//

import SwiftUI

@main
struct AirlinesWorkshopApp: App {
    @StateObject private var model = FlightViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
