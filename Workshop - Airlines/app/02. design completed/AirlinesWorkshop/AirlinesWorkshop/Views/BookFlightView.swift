//
//  BookFlightView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI

struct BookFlightView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            container
        }
        .background(Color(.baseWhite).edgesIgnoringSafeArea(.all))
    }

    var container: some View {
        Group {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    BookFlightHeaderView()
                    BookFlightContentView(isPresented: .constant(false))
                }
                .padding(.bottom, 80)
            }
            .hideNavigationBar()
            
            footer
        }
    }
    
    var footer: some View {
        ZStack {
            Rectangle()
                .fill(Color.baseDarkBlue)
                .edgesIgnoringSafeArea(.bottom)
                .frame(height: 114)
                .cornerRadius(10, corners: [.topLeft, .topRight])

            
            NavigationLink(destination: LazyView(ChooseFlightView()), isActive: .constant(false)) {
                FooterButton(title: "SEARCH FLIGHTS") {
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .offset(y: 35)
    }
}

struct FlightBookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookFlightView()
    }
}
