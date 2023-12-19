//
//  Android_DevApp.swift
//  Android Dev
//
//  Created by Stefan Schwinghammer on 19.12.2023.
//

import SwiftUI

@main
struct Android_DevApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
