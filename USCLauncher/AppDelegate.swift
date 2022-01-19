//
//  AppDelegate.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 13.01.2022.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("Starting…")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("Exiting…")
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}
