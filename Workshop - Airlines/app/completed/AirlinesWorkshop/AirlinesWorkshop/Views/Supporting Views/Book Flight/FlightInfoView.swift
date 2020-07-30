//
//  FlightInfoView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct FlightInfoView: View {
    
    @EnvironmentObject var model: FlightViewModel
    
    
    
    var body: some View {
        VStack {
            HStack {
                DateButton(title: "DEPARTURE",
                           date: model.departureDate.displayDate.isEmpty ? model.todaysDate : model.departureDate.displayDate) {
                    self.model.isSettingArrivalDate = false
                    self.model.isDatePickerVisible.toggle()
                }
               
                Spacer()
                
                DateButton(title: "ARRIVAL",
                           date: model.arrivalDate.displayDate.isEmpty ? model.todaysDate : model.arrivalDate.displayDate) {
                    self.model.isSettingArrivalDate = true
                    self.model.isDatePickerVisible.toggle()
                }
            }
            .padding(.top, 20)
            .padding(.horizontal, 10)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Image(systemName: "calendar")
                        Text("PASSENGERS")
                            .custom(font: .regular, size: 16)
                            .foregroundColor(.baseLightBlue)
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 150, height: 80)
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.14), radius: 14, x: 0, y: 0)
                        
                        VStack(spacing: 0) {
                            Text("\(model.passengers)")
                                .custom(font: .bold, size: 24)
                            Stepper("", value: $model.passengers, in: 1...6)
                                .labelsHidden()
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 10)
        }
    }
}

struct FlightInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FlightInfoView()
            .environmentObject(FlightViewModel())
    }
}
