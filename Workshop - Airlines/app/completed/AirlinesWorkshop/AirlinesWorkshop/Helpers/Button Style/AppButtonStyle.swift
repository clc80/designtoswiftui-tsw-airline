//
//  AppButtonStyle.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/6/20.
//

import SwiftUI

struct AppButtonStyle: ButtonStyle {
    var textColor: Color
    var backgroundColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 112, height: 35)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(6)
            .shadow(color: Color.black.opacity(0.14), radius: 14, x: 0, y: 0)
    }
}
