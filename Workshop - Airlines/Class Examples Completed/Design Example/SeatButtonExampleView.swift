//
//  SeatButtonExampleView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/29/20.
//

import SwiftUI

struct SeatButtonExampleView: View {
    @State private var isChecked = false
    var data: Seat
    
    var body: some View {
        ZStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isChecked)
            }
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(SeatToggleStyle())
            
            Text("\(data.seat)")
                .foregroundColor(.white)
                .custom(font: .heavy, size: 13)
                .offset(y: 8)
        }
    }
}

struct SeatButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SeatButtonExampleView(data: Seat(row: 1, seat: "A")).previewLayout(.fixed(width: 30, height: 30))
    }
}
