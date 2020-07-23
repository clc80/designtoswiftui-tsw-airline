//
//  LocationSelectionView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct LocationSelectionView: View {
    @EnvironmentObject var model: FlightViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List{
                ForEach(model.items) { location in
                    
                    HStack {
                        Text("\(location.name)").foregroundColor(Color.black)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if model.isSettingArrivalLocation {
                            self.model.departureLocation = location
                            self.model.isDepartureLocationSet = true
                            self.isPresented = false
                        } else {
                            self.model.arrivalLocation = location
                            self.model.isArrivalLocationSet = true
                            self.isPresented = false
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Locations"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action:{
                self.isPresented = false
            }){
                Text("Done")
            })
        }
        .accentColor(.black)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSelectionView(isPresented: .constant(false))
    }
}

