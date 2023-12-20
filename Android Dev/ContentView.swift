//
//  ContentView.swift
//  Android Dev
//
//  Created by Stefan Schwinghammer on 19.12.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        Button("Adb??") {
            getDevices()
        }
        Button("Adb Device") {
            //Todo
        }
        Text("Device")
        Button("Logcat") {
            //logcat()
        }
        Text("Install")
        Text("Screenshot")
    }
}



#Preview {
    ContentView()
}
