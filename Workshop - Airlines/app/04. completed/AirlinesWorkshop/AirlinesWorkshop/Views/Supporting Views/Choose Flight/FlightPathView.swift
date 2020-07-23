//
//  FlightPathView.swift
//  TicketDatePicker
//
//  Created by Craig Clayton on 7/22/20.
//

import SwiftUI

struct FlightPathView: View {
    @State private var motion = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            path
            departureDot
            arrivalDot
            airplane
        }
    }
    
    var path: some View {
        VStack {
            Circle()
                .trim(from: 39/64, to: 57/64)
                .stroke(style: StrokeStyle( lineWidth: 1, dash: [5]))
                .frame(width: 250)
                .foregroundColor(.white)
                .offset(y: 107)
        }.frame(height: 250)
    }
    
    var airplane: some View {
        ZStack {
            Image(systemName: "airplane")
                .font(.largeTitle)
                .offset(y: -125)
                .foregroundColor(.white)
                .rotationEffect(.degrees(motion ? 50 : -50))
                .animation(Animation.linear(duration: 4).delay(2).repeatForever(autoreverses: false).delay(1))
                .onAppear {
                    self.motion.toggle()
                }
        }
    }
    
    var arrivalDot: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .opacity(0.10)
                .frame(width: 18)
            
            Circle()
                .foregroundColor(.white)
                .opacity(0.30)
                .frame(width: 10)
            
            Circle()
                .foregroundColor(.white)
                .opacity(1)
                .frame(width: 6)
        }
        .frame(height: 20)
        .offset(x: 95, y: -86)
    }
    
    var departureDot: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .opacity(0.10)
                .frame(width: 18)
            
            Circle()
                .foregroundColor(.white)
                .opacity(0.30)
                .frame(width: 10)
            
            Circle()
                .foregroundColor(.white)
                .opacity(1)
                .frame(width: 6)
        }
        .frame(height: 20)
        .offset(x: -98, y: -86)
    }
}

struct FlightPathView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color("dark-blue")
                .edgesIgnoringSafeArea(.all)
            FlightPathView()
        }
    }
}
