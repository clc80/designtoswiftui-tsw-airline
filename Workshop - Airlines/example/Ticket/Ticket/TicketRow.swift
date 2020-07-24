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
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
            
            VStack {
                ticketHeader.frame(height: 45)
                ticketTimes.padding(.top, 5)
                divider
                ticketFooter
            }
        }
        .frame(height: 195)
        .padding(.horizontal, 10)
    }
    
    var divider: some View {
        Rectangle()
            .fill(Color.baseDarkBlue)
            .frame(height: 0.5)
            .padding(.horizontal, 15)
    }
    
    var ticketFooter: some View {
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
        .padding(.horizontal, 15)
        .frame(height: 45)
        .padding(.bottom, 5)
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
        }.padding(.horizontal, 25)
    }
    
    var ticketHeader: some View {
        HStack {
            HStack(spacing: 0) {
                HStack {
                    VStack(alignment: .leading, spacing: -5) {
                        Text("LAX")
                            .custom(font: .heavy, size: 20)
                        Text("Los Angeles")
                            .custom(font: .medium, size: 12)
                    }
                    .offset(y: 7)
                    .foregroundColor(.baseLightBlue)
                }
                
                HStack(spacing: -5) {
                    IndicatorView(color: .baseLightBlue)
                    Rectangle().frame(height: 0.5)
                }
                
                ZStack {
                    VStack(spacing: 0) {
                        Image(systemName: "airplane")
                            .frame(width: 20, height: 22)
                            .foregroundColor(.baseDarkBlue)
                            .padding(.horizontal, 10)
                        
                    }
                }
                
                
                HStack(spacing: -5) {
                    Rectangle().frame(height: 0.5)
                    IndicatorView(color: .baseLightBlue)
                }
                
                HStack {
                    VStack(alignment: .trailing, spacing: -5) {
                        Text("LAX")
                            .custom(font: .heavy, size: 20)
                        Text("Los Angeles")
                            .custom(font: .medium, size: 12)
                    }
                    .offset(y: 7)
                    .foregroundColor(.baseLightBlue)
                }
            }.padding(.horizontal, 0)
        }.padding(.horizontal, 15)
    }
}

struct TicketItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.baseMediumGrey)
                .edgesIgnoringSafeArea(.all)
            TicketRow()
        }.previewLayout(.fixed(width: 600, height: 300))
    }
}




