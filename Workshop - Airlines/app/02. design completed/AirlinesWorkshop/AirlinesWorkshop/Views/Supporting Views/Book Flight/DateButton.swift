//
//  DateButton.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import SwiftUI

struct DateButton: View {
    let title: String
    let date: String
    let action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(systemName: "calendar")
                Text(title)
                    .custom(font: .regular, size: 16)
                    .foregroundColor(.baseLightBlue)
            }
            
            Button(action: action) {
                ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 150, height: 53)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.14), radius: 14, x: 0, y: 0)

                    Text(date)
                        .custom(font: .bold, size: 18)
                        .foregroundColor(.black)
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct DateButton_Previews: PreviewProvider {
    static var previews: some View {
        DateButton(title: "DEPARTURE", date: "21 Jun, 2020") {
            print("departed")
        }
    }
}
