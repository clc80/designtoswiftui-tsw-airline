//
//  DateButtonStyle.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import Foundation
import SwiftUI

struct DateButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .custom(font: .bold, size: 18)
            .foregroundColor(.black)
            .background(Rectangle()
                            .fill(Color.white)
                            .frame(width: 150, height: 53)
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.14), radius: 14, x: 0, y: 0))
    }
}
