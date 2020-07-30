//
//  SeatButtonView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/22/20.
//

import SwiftUI

struct SeatButtonView: View {
    @State private var isChecked = false
    var data: Seat
    
    var body: some View {
        ZStack {
            if randomBool() {
                Image("seat-unavailable")
            } else {
                available
            }
        }
    }
    
    var available: some View {
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
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

struct SeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SeatButtonView(data: Seat(row: 0, seat: "A"))
    }
}
