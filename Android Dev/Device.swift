//
//  Device.swift
//  Android Dev
//
//  Created by Stefan Schwinghammer on 20.12.2023.
//

import Foundation

struct Device {
    var id: String
    var name: String

    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
