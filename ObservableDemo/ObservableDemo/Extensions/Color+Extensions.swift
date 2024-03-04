//
//  Color+Extensions.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
