//
//  Executor.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 13.01.2022.
//

import Foundation

func runGame() {
    let task = Process()
    task.executableURL = gameBin
    task.currentDirectoryURL = gameFolder
    task.environment = ["DYLD_LIBRARY_PATH":"lib/", "DYLD_FALLBACK_LIBRARY_PATH":"lib/"]
    var args: [String] = []
    if (UserDefaults.gameForceFS == "1") { args.append("-fullscreen") }
    if (UserDefaults.gameAutoplay == "1") { args.append("-autoplay") }
    if (UserDefaults.gameNoSound == "1") { args.append("-mute")   }
    if (UserDefaults.gameSkipTitle == "1") { args.append("-notitle") }
    task.arguments = args
    //    let outPipe = Pipe()
    //    task.standardOutput = outPipe
    do {
        try task.run()
    } catch {
        print("run failed\ngame folder: \(gameFolder!)\ngame: \(gameBin!)")
    }
    /*
     let fileHandle = outPipe.fileHandleForReading
     let outputData = fileHandle.readDataToEndOfFile()
     let output = String(decoding: outputData, as: UTF8.self)
     task.waitUntilExit()
     print("Output: \(output)")
     let status = task.terminationStatus
     if (status != 0) {
         print("log show command returned error number \(status)")
     } else {
         print("OK")
     }
     */
} // runGame()
