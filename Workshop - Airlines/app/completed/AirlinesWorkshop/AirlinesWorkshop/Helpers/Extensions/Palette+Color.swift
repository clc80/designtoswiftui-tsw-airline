//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseWhite = Color("anti-flash_white")
    static let baseDarkBlue = Color("medium_jungle_green")
    static let baseDarkGrey = Color("payne's_grey")
    static let baseLightBlue = Color("tiffany_blue")
    static let baseMediumGrey = Color("medium_grey")
}

extension UIColor {
    static let baseWhite = Color(named: "anti-flash_white")
    static let baseDarkBlue = Color(named: "medium_jungle_green")
    static let baseDarkGrey = Color(named: "payne's_grey")
    static let baseLightBlue = Color(named: "tiffany_blue")
    static let baseMediumGrey = Color(named: "medium_grey")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

