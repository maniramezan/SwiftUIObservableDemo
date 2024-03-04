//
//  ObservableContentView.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import SwiftUI

struct ObservableContentView: View {
    var body: some View {
        VStack {
            ObservableStudentNameView()
            Divider()
            ObservableStudentAddressView()
            Divider()
            ObservableStudentGradeView()
        }
        .padding()
    }
}

struct ObservableStudentGradeView: View {
    @Environment(ObservableStudent.self) private var student

    var body: some View {
        VStack {
            Text(String(describing: Self.self))
                .font(.largeTitle)
            Text("Grade: \(student.grade)")
            Color.random
                .frame(height: 50)
            Button("Update Grade") {
                student.grade = Int.random(in: 0...100)
            }
        }
    }
}

struct ObservableStudentNameView: View {
    @Environment(ObservableStudent.self) private var student

    var body: some View {
        VStack {
            Text(String(describing: Self.self))
                .font(.largeTitle)
            Color.random
                .frame(height: 50)
            Text(student.name)
            Button("Update Name") {
                student.name = "Name: \(Int.random(in: 0...100000)))"
            }
        }
    }
}

struct ObservableStudentAddressView: View {
    @Environment(ObservableStudent.self) private var student

    var body: some View {
        VStack {
            Text(String(describing: Self.self))
                .font(.largeTitle)
            Color.random
                .frame(height: 50)
            Text(student.address)
            Button("Update Address") {
                student.address = "Address: \(Int.random(in: 0...100000)))"
            }
        }
    }
}

#Preview {
    ObservableContentView()
        .environment(ObservableStudent())
}
