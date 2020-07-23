//
//  TicketRow.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct TicketRow: View {
    
    var body: some View {
        ZStack {
            Image("ticket-bg")
                .resizable()
                .frame(height: 216)
            
            VStack(spacing: 0) {
                ticketHeader.frame(height: 45)
                ticketTimes
                    .padding(.top, 15)
                    .padding(.bottom, 18)
                
                Image("blue-divider")
                    .frame(height: 4)
                    .padding(.bottom, 8)
                
                HStack {
                    HStack {
                        Circle()
                            .frame(width: 42)
                        Text("American Airlines")
                            .custom(font: .demibold, size: 12)
                            .foregroundColor(.baseDarkBlue)
                    }
                    Spacer()
                    Text("$999")
                        .custom(font: .bold, size: 24)
                        .foregroundColor(.baseDarkBlue)
                }
                .padding(.horizontal, 40)
                .frame(height: 45)
                .padding(.bottom, 20)
                
                Spacer()
            }
            .padding(.top, 25)
        }.frame(height: 195)
    }
    
    var ticketTimes: some View {
        HStack {
            VStack(alignment: .leading, spacing: -5) {
                HStack(spacing: 4) {
                    Text("11:25")
                        .custom(font: .heavy, size: 24)
                    Text("PM")
                        .custom(font: .heavy, size: 18)
                        .padding(.top, 4)
                }
                .foregroundColor(.baseDarkBlue)
                
                Text("21 June, 2020")
                    .custom(font: .regular, size: 14)
                    .foregroundColor(.baseDarkBlue)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: -5) {
                HStack(spacing: 4) {
                    Text("11:25")
                        .custom(font: .heavy, size: 24)
                    Text("PM")
                        .custom(font: .heavy, size: 18)
                        .padding(.top, 4)
                }
                .foregroundColor(.baseDarkBlue)
                
                Text("21 June, 2020")
                    .custom(font: .regular, size: 14)
                    .foregroundColor(.baseDarkBlue)
            }
        }.padding(.horizontal, 45)
    }
    
    var ticketHeader: some View {
        HStack(spacing: 25) {
            VStack(alignment: .leading, spacing: -10) {
                Text("XXX")
                    .custom(font: .heavy, size: 24)
                Text("Los Angeles")
                    .custom(font: .medium, size: 12)
            }
            .foregroundColor(.baseLightBlue)
            
            ZStack {
                HStack(spacing: 8) {
                    line.offset(y: -85)
                        .foregroundColor(.baseLightBlue)
                    Image(systemName: "airplane")
                        .offset(y: -8)
                        .foregroundColor(.baseDarkBlue)
                    
                    line.offset(y: -85)
                }
                
                Text("20h 15m duration")
                    .padding(.top, 20)
                    .custom(font: .demibold, size: 12)
                    .foregroundColor(.baseDarkBlue)
                
                Image("dot-lightblue")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .offset(x: -92, y: -8)
                
                Image("dot-darkblue")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .offset(x: 92, y: -8)
            }
            
            VStack(alignment: .trailing, spacing: -10) {
                Text("XXX")
                    .custom(font: .heavy, size: 24)
                Text("San Francisco")
                    .custom(font: .medium, size: 12)
            }
            .foregroundColor(.baseDarkBlue)
        }
    }
    
    var line: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 75, y: 0))
        }
        .trim(from: 0, to: 1)
        .stroke(style: StrokeStyle(lineWidth: 1,
                                   lineCap: .square,
                                   lineJoin: .miter,
                                   dash: [0,6],
                                   dashPhase: 12))
        .frame(width: 75)
        .offset(y: 100)
    }
}

struct TicketItem_Previews: PreviewProvider {
    static var previews: some View {
        TicketRow()
    }
}
