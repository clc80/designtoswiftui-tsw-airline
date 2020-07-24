//
//  ContentView.swift
//  Ticket
//
//  Created by Craig Clayton on 7/24/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.baseMediumGrey).edgesIgnoringSafeArea(.all)
            TicketRow()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
