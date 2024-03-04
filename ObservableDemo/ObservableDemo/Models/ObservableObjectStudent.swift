//
//  File.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import Foundation

final class ObservableObjectStudent: ObservableObject {
    @Published var name: String = "Student name"
    @Published var address: String = "Student address"

    var grade: Int = 0 {
        didSet {
            objectWillChange.send()
        }
    }
}
