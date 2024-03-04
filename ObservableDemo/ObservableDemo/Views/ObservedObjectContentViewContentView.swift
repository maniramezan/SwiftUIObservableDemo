//
//  ContentView.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import SwiftUI

struct ObservableObjectContentView: View {

    var body: some View {
        VStack {
            ObservableObjectStudentNameView()
            Divider()
            ObservableObjectStudentAddressView()
            Divider()
            ObservableObjectStudentGradeView()
        }
        .padding()
    }
}

struct ObservableObjectStudentGradeView: View {
    @EnvironmentObject private var student: ObservableObjectStudent

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

struct ObservableObjectStudentNameView: View {
    @EnvironmentObject private var student: ObservableObjectStudent

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

struct ObservableObjectStudentAddressView: View {
    @EnvironmentObject private var student: ObservableObjectStudent

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
    ObservableObjectContentView()
        .environmentObject(ObservableObjectStudent())
}
