//
//  LocationSelectionView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/19/20.
//

import SwiftUI

struct LocationSelectionView: View {
    @Binding var isPresented: Bool
    
    var items = [
        LocationItem.defaultArrivalLocation,
        LocationItem.defaultDepartureLocation
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(items) { location in
                    
                    HStack {
                        Text("\(location.name)").foregroundColor(Color.black)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print("tap")
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

