//
//  ChooseFlightView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI


struct ChooseFlightView: View {
    @EnvironmentObject var model: FlightViewModel
    let coloredNavAppearance = UINavigationBarAppearance()
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor.baseDarkBlue
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    var body: some View {
        ZStack {
            container
            ChooseFlightHeaderView()
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
    
    var container: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0 ..< 5, id: \.self) { item in
                    NavigationLink(destination: LazyView(SeatSelectionView().environmentObject(model))) {
                        TicketRow().environmentObject(model)
                    }.buttonStyle(PlainButtonStyle())
                }
            }.padding(.top, 205)
            .padding(.bottom, 40)
        }
    }
}

struct TicketListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChooseFlightView()
        }
    }
}
