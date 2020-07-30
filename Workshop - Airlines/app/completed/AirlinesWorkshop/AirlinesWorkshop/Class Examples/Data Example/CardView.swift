//
//  CardView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/29/20.
//

import SwiftUI

struct CardView: View {
    
    @EnvironmentObject var model: FlightViewModel
    
    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .opacity(0.94)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
