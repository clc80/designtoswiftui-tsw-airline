//
//  TicketRow.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct TicketRow: View {
    
    var body: some View {
        Text("Ticket Row")
                    .custom(font: .medium, size: 12)
    }
    
    var line: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 75, y: 0))
        }
        .trim(from: 0, to: 1)
        .stroke(style: StrokeStyle(lineWidth: 1,
                                   lineCap: .square,
                                   lineJoin: .miter,
                                   dash: [0,6],
                                   dashPhase: 12))
        .frame(width: 75)
        .offset(y: 100)
    }
}

struct TicketItem_Previews: PreviewProvider {
    static var previews: some View {
        TicketRow()
    }
}
