//
//  FooterButton.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI

struct FooterButton: View {
    
    let title: String
    var showIcon: Bool = true
    let action: () -> Void
    let font = Font.system(size: 24).bold()
    
    var body: some View {
        ZStack {
            
            HStack {
                Spacer()
                Text(title)
                    .custom(font: .heavy, size: 29)
                    .foregroundColor(.white)
                
                if showIcon {
                    Image(systemName: "magnifyingglass")
                        .font(font)
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                        .padding(.leading, 5)
                }
                
                Spacer()
            }
            .frame(height: 65)
            .background(Color.baseLightBlue)
            .cornerRadius(12)
            .padding(.horizontal)
            .onTapGesture {
                action()
            }
        }
    }
}

struct FooterButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FooterButton(title: "SEARCH FLIGHTS", action: {})
            FooterButton(title: "SELECT", showIcon: false, action: {})
        }
        
    }
}
