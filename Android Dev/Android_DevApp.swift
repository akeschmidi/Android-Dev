//
//  Android_DevApp.swift
//  Android Dev
//
//  Created by Stefan Schwinghammer on 19.12.2023.
//

import SwiftUI

@main
struct Android_DevApp: App {

    var body: some Scene {
        
        MenuBarExtra("Android Dev", systemImage: "figure.wave") {
            ContentView()
        }
        
        WindowGroup {
            ContentView()
        }
    }
}
