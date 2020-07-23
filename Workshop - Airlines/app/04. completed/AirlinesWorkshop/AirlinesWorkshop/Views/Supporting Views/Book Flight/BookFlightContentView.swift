//
//  BookFlightContentView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/21/20.
//

import SwiftUI

struct BookFlightContentView: View {
    
    @EnvironmentObject var model: FlightViewModel
    @Binding var isPresented:Bool
    
    var body: some View {
        VStack {
            // Booking Type Buttons
            HStack {
                ForEach(model.buttons.indices, id: \.self) { index in
                    let extractedExpr = Button(action: { self.model.selectedFlightType = FlightType(rawValue: index)! }) {
                        HStack {
                            Image(systemName: model.buttons[index].image)
                            HStack(spacing: 0) {
                                Text(model.buttons[index].title).custom(font: .bold, size: 14)
                                Text(model.buttons[index].subtitle).custom(font: .regular, size: 14)
                            }
                        }
                    }
                    extractedExpr
                    .buttonStyle(AppButtonStyle(
                                    textColor: updateTextColor(with: index),
                                    backgroundColor: updateBackgroundColor(with: index)))
                }
            }
            // Destination/Arrival Buttons
            ZStack {
                LazyVStack(spacing: 20) {
                    DestinationButton(action: {
                        self.model.isSettingArrivalLocation = true
                        self.isPresented = true
                    })
                    .padding(.horizontal, 10)
                    .sheet(isPresented: $isPresented) {
                        LocationSelectionView(isPresented: $isPresented)
                            .environmentObject(self.model)
                    }

                    ArrivalButton(action: {
                        self.model.isSettingArrivalLocation = false
                        self.isPresented = true
                    } )
                    .padding(.horizontal, 10)
                    .sheet(isPresented: $isPresented) {
                        LocationSelectionView(isPresented: $isPresented)
                            .environmentObject(self.model)
                    }
                }
                .padding(.top, 10)
                
                ZStack {
                    Rectangle()
                        .fill(Color.baseLightBlue)
                        .cornerRadius(10)
                        .frame(width: 45, height: 42)
                    
                    Image(systemName: model.buttons[self.model.selectedFlightType.rawValue].image)
                        .font(.system(size: 20, weight: .semibold))
                }
                .foregroundColor(.white)
                .offset(x:120, y: 4)
            }

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
            .padding(.bottom, 20)
        }
    }
    
    func updateTextColor(with index: Int) -> Color {
        self.model.selectedFlightType == FlightType(rawValue: index) ? Color.white : Color.baseLightBlue
    }
    
    func updateBackgroundColor(with index: Int) -> Color {
        self.model.selectedFlightType == FlightType(rawValue: index) ? .baseLightBlue : .white
    }
}

struct BookingContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookFlightContentView(isPresented: .constant(false))
    }
}
