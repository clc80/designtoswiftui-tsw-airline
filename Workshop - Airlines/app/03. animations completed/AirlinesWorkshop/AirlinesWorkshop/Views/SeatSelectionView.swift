//
//  SeatSelectionView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct SeatSelectionView: View {

    let font = Font.system(size: 24).bold()
    let coloredNavAppearance = UINavigationBarAppearance()

    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor.baseDarkBlue

        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    var body: some View {
        ZStack {
            Color(.baseWhite)
                .edgesIgnoringSafeArea(.bottom)
            
            SeatInfoView()
            
            ScrollView(.vertical, showsIndicators: false) {
                SeatContentView()
            }
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}

struct SeatView_Previews: PreviewProvider {
    static var previews: some View {
        SeatSelectionView()
    }
}
