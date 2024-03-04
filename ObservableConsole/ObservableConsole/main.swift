//
//  main.swift
//  ObservableConsole
//
//  Created by Mani Ramezan on 3/4/24.
//

import Foundation

@Observable final class Student {
    var name: String = "Default name"
    var address: String = "Default address"
}

let student = Student()

func startObserving() {
    withObservationTracking({
        print("applying: \(student.name)")
    }, onChange: {
        print("onChange: \(student.name)")
        startObserving()
    })
}


startObserving()
student.name = "Student Name 2"
student.name = "Student Name 3"
student.name = "Student Name 4"
