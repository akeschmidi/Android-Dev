//
//  shell.swift
//  Android Dev
//
//  Created by Stefan Schwinghammer on 19.12.2023.
//

import Foundation



let adb = Bundle.main.url(forResource: "adb", withExtension: nil)

private func runAdbCommand(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", adb!.path + " " + command]
    task.launchPath = "/bin/sh"
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!.trimmingCharacters(in: .whitespacesAndNewlines)
    return output
}


func getDevices() -> [Device] {
    print("Run here")
    let command = "devices -l | awk 'NR>1 {print $1}'"
    let devicesResult = runAdbCommand(command)
    return devicesResult
        .components(separatedBy: .newlines)
        .filter({ (id) -> Bool in
            !id.isEmpty
        })
        .map { (id) -> Device in
            Device(id: id, name: getDeviceName(deviceId: id))
        }
}

func getDeviceName(deviceId: String) -> String {
    let command = "-s " + deviceId + " shell getprop ro.product.model"
    return runAdbCommand(command)
}
