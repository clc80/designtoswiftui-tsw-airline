//
//  BookFlightView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI

struct BookFlightView: View {
    @EnvironmentObject var model: FlightViewModel
    @State private var isShowingDetailView = false
    @State private var isPresented = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            container
            if model.isDatePickerVisible {
                LazyView(CustomDatePicker())
            }
        }
        .background(Color(.baseWhite).edgesIgnoringSafeArea(.all))
    }

    var container: some View {
        Group {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    BookFlightHeaderView()
                    BookFlightContentView(isPresented: $isPresented)
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

            NavigationLink(destination: LazyView(ChooseFlightView()), isActive: $isShowingDetailView) {
                FooterButton(title: "SEARCH FLIGHTS") {
                    self.isShowingDetailView = true
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
