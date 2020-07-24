//
//  IndicatorView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/24/20.
//

import SwiftUI

struct IndicatorView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color.opacity(0.1))
                .frame(width: 18, height: 18)
            
            Circle()
                .fill(color.opacity(0.3))
                .frame(width: 10, height: 10)
            
            Circle()
                .fill(color.opacity(1))
                .frame(width: 6, height: 6)
        }
        .frame(width: 18, height: 18)
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView(color: .baseLightBlue)
    }
}
