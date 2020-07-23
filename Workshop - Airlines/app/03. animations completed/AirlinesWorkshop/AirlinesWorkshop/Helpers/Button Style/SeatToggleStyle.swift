//
//  SeatToggleStyle.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/22/20.
//

import SwiftUI

struct SeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "seat-selected" : "seat-available")
        }.frame(width: 27, height: 37)
    }
}
