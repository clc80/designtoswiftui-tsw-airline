//
//  CustomDataPicker.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/6/20.
//

import SwiftUI



struct CustomDatePicker: View {
    
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
                        Text("Add Code here")
                    }.frame(height: 210)
                    
                }
                .frame(height: 400)
                .background(Color.white)
                .cornerRadius(10)
                .padding(5)
                
                Button(action: {  }) {
                    Image(systemName: "x.circle.fill").font(Font.system(size: 24).bold())
                }
                .offset(x: -15, y: 15)
                .foregroundColor(.black)
            }
            
            Text("Add Code here")
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

