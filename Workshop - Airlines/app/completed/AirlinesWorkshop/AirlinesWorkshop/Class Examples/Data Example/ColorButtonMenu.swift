//
//  ColorButtonMenu.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorButtonMenu: View {
    @EnvironmentObject var model:FlightViewModel
    
    var body: some View {
        HStack {
            ForEach(0..<self.model.colors.count) { index in
                Button(action: {}) {
                    ZStack {
                        ColorView(color: self.model.colors[index])
                        Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 12.0, height: 10.0)
                        .foregroundColor(.white)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ColorButtonMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonMenu()
            .previewLayout(.fixed(width: 300, height: 50)).environmentObject(FlightViewModel())
    }
}
