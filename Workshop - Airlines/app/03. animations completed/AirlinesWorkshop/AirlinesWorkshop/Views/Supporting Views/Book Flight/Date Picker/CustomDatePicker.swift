//
//  CustomDataPicker.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/6/20.
//

import SwiftUI



struct CustomDatePicker: View {
    @Namespace private var namespace
    @EnvironmentObject var model: FlightViewModel
    @State private var selectedItemID: String?
    @State private var topmostItemID: String?
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .background(VibrancyBackground())
                .edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .topTrailing) {
                VStack {
                    HStack {
                        HStack {
                            Image(systemName: "calendar")
                                .foregroundColor(.baseLightBlue)
                            Text("DEPARTURE")
                                .custom(font: .regular, size: 16)
                                .foregroundColor(.baseLightBlue)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 0) {
                           ForEach(self.model.dates.indices) { index in
                               let presenting = selectedItemID == self.model.dates[index].id
                               
                               Button(action: { select(item: self.model.dates[index]) }) {
                                   CalendarItem(namespace: namespace, data: self.model.dates[index])
                               }
                               .buttonStyle(PlainButtonStyle())
                               .opacity(!presenting ? 1 : 0)
                           }
                       }
                    }.frame(height: 210)
                    
                }
                .frame(height: 400)
                .background(Color.white)
                .cornerRadius(10)
                .padding(5)
                
                Button(action: { model.isDatePickerVisible.toggle() }) {
                    Image(systemName: "x.circle.fill").font(Font.system(size: 24).bold())
                }
                .offset(x: -15, y: 15)
                .foregroundColor(.black)
            }
            
            ForEach(model.dates.indices, id: \.self) { index in
                let presenting = selectedItemID == self.model.dates[index].id
                CalendarSelectedItem(data: self.model.dates[index], closeAction: deselect, namespace: namespace)
                    .opacity(presenting ? 1 : 0)
            }
        }
    }
    
    func select(item: DateItem) {
        topmostItemID = item.id
        withAnimation(.expandDate) {
            selectedItemID = item.id
        }
    }
    
    func deselect() {
        withAnimation(.contractDate) {
            selectedItemID = nil
        }
    }
}

extension Animation {
    static let expandDate = Animation.spring(response: 0.45, dampingFraction: 0.9)
    static let contractDate = Animation.spring(response: 0.35, dampingFraction: 1)
}

struct CustomDataPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomDatePicker()
    }
}

