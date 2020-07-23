//
//  NavigationBar+Extension.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import Foundation
import SwiftUI

public struct NavigationBarView: ViewModifier {
    @State var isHidden: Bool = false

    public func body(content: Content) -> some View {
        content
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.bottom])
    }
}

extension View {
    public func hideNavigationBar() -> some View {
        modifier(NavigationBarView())
    }
}
