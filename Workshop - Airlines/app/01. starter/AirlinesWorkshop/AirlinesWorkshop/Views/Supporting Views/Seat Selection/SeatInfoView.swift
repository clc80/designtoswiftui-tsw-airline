//
//  SeatInfoView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/22/20.
//

import SwiftUI

struct SeatInfoView: View {
    var body: some View {
        Text("Seat Info View")
    }
    
    var line: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 150))
        }
        .trim(from: 0, to: 1)
        .stroke(style: StrokeStyle(lineWidth: 1,
                                   lineCap: .square,
                                   lineJoin: .miter,
                                   dash: [0,6],
                                   dashPhase: 12))
        .frame(width: 5)
    }
}

struct SeatInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        SeatInfoView()
    }
}
