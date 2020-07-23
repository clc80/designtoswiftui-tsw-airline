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
        ZStack(alignment: .trailing) {
            HStack {
                Spacer()
                Image("plane-outline")
            }
            
            ZStack {
                HStack(spacing: 35) {
                    
                    VStack {
                        ForEach(0..<rows, id: \.self) { row in
                            HStack{
                                ForEach(0..<numbersPerRow, id: \.self){ number in
                                    SeatButtonView(data: Seat(row: row + 1, seat: "\(leftSeatRows[number])"))
                                }
                            }
                        }
                    }.frame(width: 100)
                    
                    VStack {
                        ForEach(0..<rows, id: \.self) { row in
                            HStack{
                                ForEach(0..<numbersPerRow, id: \.self){ number in
                                    SeatButtonView(data: Seat(row: row + 1, seat: "\(rightSeatRows[number])"))
                                }
                            }
                        }
                    }.frame(width: 100)
                }
                .offset(x: -15, y:100)
                
                VStack(spacing: 9) {
                    ForEach(1..<17, id: \.self) { index in
                        Text("\(index)")
                            .custom(font: .heavy, size: 18)
                            .foregroundColor(.white)
                            .frame(width: 27, height: 37)
                    }
                }
                .offset(x: -15, y:101)
            }
            
        }.padding(.top, 90).padding(.bottom, -40)
    }
}

struct SeatContentView_Previews: PreviewProvider {
    static var previews: some View {
        SeatContentView()
    }
}
