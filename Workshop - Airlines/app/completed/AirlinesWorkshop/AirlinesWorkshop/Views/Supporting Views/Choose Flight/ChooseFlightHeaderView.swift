//
//  ChooseFlightHeaderView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI

struct ChooseFlightHeaderView: View {
    
    @EnvironmentObject var model: FlightViewModel

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.baseDarkBlue)
                .frame(height: 240)
                .cornerRadius(27, corners: [.bottomLeft, .bottomRight])
                .offset(y: -300)
            
            FlightPathView()
                .frame(height: 100)
                .offset(y: -300)
            
            content
                .frame(height: 200)
                .offset(y: -210)
            
        }.navigationBarTitle("", displayMode: .inline)
    }
    
    var content: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    VStack(alignment: .leading, spacing: -5) {
                        Text(model.departureLocation.code)
                            .custom(font: .heavy, size: 24)
                        Text("21 June, 2020")
                            .custom(font: .regular, size: 14)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: -5) {
                        Text(model.arrivalLocation.code)
                            .custom(font: .heavy, size: 24)
                        Text("22 June, 2020")
                            .custom(font: .regular, size: 14)
                    }
                }
                .offset(y: 0)
                .padding(.horizontal, 80)
                .foregroundColor(.white)
                
                HStack {
                    Button(action: {}) {
                        HStack {
                            Image("icon-filter")
                            HStack(spacing: 0) {
                                Text("FILTER").custom(font: .bold, size: 14)
                                Text("BY").custom(font: .regular, size: 14)
                            }
                        }
                    }
                    .buttonStyle(AppButtonStyle(textColor: .white, backgroundColor: .baseLightBlue))
                    
                    Button(action: {}) {
                        HStack {
                            Image("icon-sort").renderingMode(.template)
                                .foregroundColor(.baseLightBlue)
                            HStack(spacing: 0) {
                                Text("SORT").custom(font: .bold, size: 14)
                                Text("BY").custom(font: .regular, size: 14)
                            }
                        }
                    }
                    .buttonStyle(AppButtonStyle(textColor: .baseLightBlue, backgroundColor: .white))
                }
                .padding(.top, 5)
            }
        }
    }
}

struct TicketingHeaderView_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            ChooseFlightHeaderView()
        }.navigationBarTitle("", displayMode: .inline)
    }
}
