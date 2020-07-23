//
//  CalendarItem.swift
//  TicketDatePicker
//
//  Created by Craig Clayton on 7/5/20.
//

import SwiftUI

struct CalendarItem: View {
    @State var isVisible = false
    @State private var currentProgress: CGFloat = 0.0
    var namespace: Namespace.ID
    
    let data: DateItem
    var maxValue: Int = 160
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(Color(.white))
                .frame(width: 57, height: 210)

            Rectangle()
                .fill(Color.baseWhite)
                .frame(width: 57, height: isVisible ? CGFloat(data.height) / CGFloat(maxValue) * 160 : 0)
                .opacity(isVisible ? 1 : 0)
                .animation(Animation.easeInOut(duration: 1).delay(1))
            
            Text("99")
                    .offset(y: -180)
                    .font(.system(size: 16, weight: .semibold))
            
        }
        .matchedGeometryEffect(id: data.id, in: namespace, properties: .frame)
        .frame(width: 57, height: 210)
        .border(width: 1, edge: .leading, color: .baseMediumGrey)
        .border(width: 1, edge: .trailing, color: .baseMediumGrey)
        .border(width: 1, edge: .bottom, color: .baseMediumGrey)
        .background(Color.white)
        .onAppear {
            self.isVisible = true
            self.startLoading()
        }
    }
    
    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                self.currentProgress += 0.01
                if self.currentProgress >= CGFloat(self.data.height) {
                    timer.invalidate()
                }
            }
        }
    }
}




