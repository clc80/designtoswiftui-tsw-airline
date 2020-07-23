//
//  CalendarSelectedItem.swift
//  TicketDatePicker
//
//  Created by Craig Clayton on 7/5/20.
//

import SwiftUI


struct CalendarSelectedItem: View {
    let data: DateItem
    var closeAction: () -> Void = {}
    
    var body: some View {
        Button(action: closeAction) {
            ZStack(alignment: .bottom) {
                Color(.black)
                    .blur(radius: 29)
                    .opacity(0.25)
               
                Rectangle()
                    .fill(Color.white)
               
                Rectangle()
                    .fill(Color.baseLightBlue)
                    .frame(height: CGFloat(data.height))
                    .padding([.leading, .trailing, .bottom], 10)
                
                HStack(alignment: .top, spacing: 0) {
                    Text("$")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.bottom, 5)
                    Text("999")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                }
                
                
                VStack(spacing: 2) {
                    Image(systemName: "airplane")
                    Text(data.title)
                        .font(.system(size: 12, weight: .semibold))
                }
                .offset(y: -175)
            }.frame(width: 78, height: 218)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CalendarSelectedItem_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSelectedItem(data: DateItem("1", height: 100, month: "", displayDate: "21 June, 2020"), closeAction: {})
    }
}

