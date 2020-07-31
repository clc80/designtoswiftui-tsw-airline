//
//  DesignIIExampleView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct DesignIIExampleView: View {
    @EnvironmentObject var model: FlightViewModel
    
    var columns: [GridItem] =
        Array(repeating: .init(.fixed(27), spacing: 6), count: 3)
    
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack {
                Spacer()
                Image("plane-outline")
            }
            
            ZStack {
                HStack(spacing: 35) {
                    seatRow
                    seatRow
                }.offset(x: -15, y: -150)
                
                aisle.offset(x: -18, y: -150)
            }
        }
    }
    
    var aisle: some View {
        VStack(alignment: .center, spacing: 8) {
            ForEach(1..<5, id: \.self) { index in
                Text("\(index)")
                    .custom(font: .heavy, size: 18)
                    .foregroundColor(.white).frame(width: 27, height: 37)
                    .border(Color.red, width: 1)
            }
        }
    }
    
    var seatRow: some View {
        ZStack {
            ScrollView(.horizontal) {
                LazyVGrid(columns: columns) {
                    ForEach((0...11), id: \.self) { _ in
                        SeatButtonExampleView(data: Seat(row: 1, seat: "A"))
                    }
                }
            }
        }.frame(width: 100)
    }
}

struct DesignIIExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DesignIIExampleView()
            .previewLayout(.fixed(width: 400, height: 1040))
    }
}
