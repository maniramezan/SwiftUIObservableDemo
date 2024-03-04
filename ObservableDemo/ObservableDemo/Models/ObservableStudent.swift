//
//  ObservableStudent.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import Foundation

@Observable final class ObservableStudent {
    var name: String = "Student name"
    var address: String = "Student address"

    var grade: Int = 0
}
