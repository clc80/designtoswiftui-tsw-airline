//
//  MainDataView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct MainDataView: View {
    var body: some View {
        VStack {
            CardView().padding(.vertical, 20)
            ColorButtonMenu()
            Spacer()
        }.padding(.top, 0)
    }
}

struct MainDataView_Previews: PreviewProvider {
    static var previews: some View {
        MainDataView().environmentObject(FlightViewModel())
    }
}
