//
//  SeatContentView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/22/20.
//

import SwiftUI

struct SeatContentView: View {
    let rows: Int = 16
    let numbersPerRow: Int = 3
    
    var leftSeatRows: [String] = ["A", "B", "C"]
    var rightSeatRows: [String] = ["D", "E", "F"]
    
    var body: some View {
        Text("Seat Content View")
    }
}

struct SeatContentView_Previews: PreviewProvider {
    static var previews: some View {
        SeatContentView()
    }
}
