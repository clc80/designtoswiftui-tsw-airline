//
//  AnimationIIExampleView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/25/20.
//

import SwiftUI

struct AnimationIIExampleView: View {
    @EnvironmentObject var model: FlightViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: -5) {
            VStack(alignment: .leading, spacing: -8) {
                Text("SELECTED").custom(font: .heavy, size: 20)
                    .foregroundColor(.baseDarkBlue)
                Text("SEAT").custom(font: .medium, size: 18)
                    .foregroundColor(.baseDarkBlue)
            }
            
            VStack(alignment: .leading, spacing: -5) {
                Text("2A")
                    .custom(font: .heavy, size: 38)
                    .foregroundColor(.baseDarkBlue)
                
                VStack(alignment: .leading, spacing: -3) {
                    
                    Text("BUSINESS").custom(font: .regular, size: 14)
                        .foregroundColor(.baseDarkBlue)
                    Text("CLASS").custom(font: .regular, size: 14)
                        .foregroundColor(.baseDarkBlue)
                }
            }
            
            Button(action: {}) {
                Text("$9999").custom(font: .heavy, size: 22)
            }
            .padding(5)
            .background(Color.baseLightBlue)
            .cornerRadius(6)
            .padding(.top)
            
            ZStack(alignment: .top) {
                line.offset(x: 25)
                
                Text(model.departureLocation.code)
                    .offset(x:23, y: -45)
                    .custom(font: .heavy, size: 24)
                    .foregroundColor(.baseLightBlue)
                
                Image("dot-lightblue")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .offset(x:23, y: -40)
                
                Image("dot-darkblue")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .offset(x:23, y: 115)
                
                Text(model.arrivalLocation.code)
                    .offset(x:23, y: 163)
                    .custom(font: .heavy, size: 24)
                
                Image(systemName: "airplane")
                    .rotationEffect(.degrees(90), anchor: .center)
                    .font(.system(size: 24, weight: .semibold))
                    .offset(x: 23, y: -17)
            }
            .padding(.top, 60)
            .offset(x: -20)
            
        }
        .offset(x: -140, y: 80)
        
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

struct AnimationIIExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationIIExampleView().environmentObject(FlightViewModel())
    }
}
