//
//  BindableContentView.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

import SwiftUI

struct BindableContentView: View {
    @Environment(ObservableStudent.self) private var student

    var body: some View {
        VStack {
            BindableStudentNameView(student: student)
            Divider()
            BindableStudentAddressView(student: student)
        }
        .padding()
    }
}

struct BindableStudentNameView: View {
    @Bindable var student: ObservableStudent
    var body: some View {
        VStack {
            Text(String(describing: Self.self))
                .font(.largeTitle)
            TextField("Student Name: ", text: $student.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Color.random
                .frame(height: 50)
        }
    }
}

struct BindableStudentAddressView: View {
    @Bindable var student: ObservableStudent
    var body: some View {
        VStack {
            Text(String(describing: Self.self))
                .font(.largeTitle)
            TextField("Student Address", text: $student.address)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Color.random
                .frame(height: 50)
        }
    }
}

#Preview {
    BindableContentView()
        .environment(ObservableStudent())
}
