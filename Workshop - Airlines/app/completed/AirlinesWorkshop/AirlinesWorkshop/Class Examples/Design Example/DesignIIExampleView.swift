//
//  DesignIIExampleView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct DesignIIExampleView: View {
    @EnvironmentObject var model: FlightViewModel
    
    
    var columns: [GridItem] =
        Array(repeating: .init(.fixed(27), spacing: 6), count: 3)
    
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack {
                Spacer()
                Image("plane-outline")
            }
            
            // Add your code here
            
            
        }
    }
}

struct DesignIIExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DesignIIExampleView()
            .previewLayout(.fixed(width: 400, height: 1040))
    }
}
