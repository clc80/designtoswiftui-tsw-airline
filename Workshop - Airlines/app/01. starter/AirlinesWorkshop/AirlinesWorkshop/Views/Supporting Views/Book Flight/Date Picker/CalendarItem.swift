//
//  CalendarItem.swift
//  TicketDatePicker
//
//  Created by Craig Clayton on 7/5/20.
//

import SwiftUI

struct CalendarItem: View {

    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(Color(.white))
                .frame(width: 57, height: 210)

            Rectangle()
                .fill(Color.baseWhite)
                .frame(width: 57, height: 160)
                .opacity(1)
                .animation(Animation.easeInOut(duration: 1).delay(1))
            
            Text("99")
                    .offset(y: -180)
                    .font(.system(size: 16, weight: .semibold))
            
        }
        .frame(width: 57, height: 210)
        .border(width: 1, edge: .leading, color: .baseMediumGrey)
        .border(width: 1, edge: .trailing, color: .baseMediumGrey)
        .border(width: 1, edge: .bottom, color: .baseMediumGrey)
        .background(Color.white)
    }
}




