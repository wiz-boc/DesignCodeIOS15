//
//  DesignCodeIOS15App.swift
//  DesignCodeIOS15
//
//  Created by wizz on 2/28/23.
//

import SwiftUI

@main
struct DesignCodeIOS15App: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
