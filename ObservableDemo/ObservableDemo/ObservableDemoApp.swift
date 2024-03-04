//
//  ObservableDemoApp.swift
//  ObservableDemo
//
//  Created by Mani Ramezan on 3/4/24.
//

/// [Discover Observation in SwiftUI](https://developer.apple.com/videos/play/wwdc2023/10149/)

import SwiftUI

@main
struct ObservableDemoApp: App {
    @StateObject var observableObjectStudent = ObservableObjectStudent()
    @State var observableStudent = ObservableStudent()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                List {
                    NavigationLink("Use Observable Object Protocol (<iOS17)") {
                        ObservableObjectContentView()
                            .environmentObject(observableObjectStudent)
                    }
                    NavigationLink("Use @Observable Macro (≥iOS17)") {
                        ObservableContentView()
                            .environment(observableStudent)
                    }
                    NavigationLink("Use @Bindable (≥iOS17)") {
                        BindableContentView()
                            .environment(observableStudent)
                    }
                }
            }
        }
    }
}
