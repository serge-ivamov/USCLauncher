//
//  Settings.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 15.01.2022.
//

import Cocoa

extension UserDefaults {
    @UserDefault(key: "gameForceFS", defaultValue: "0")
    static var gameForceFS: String
    @UserDefault(key: "gameAutoplay", defaultValue: "0")
    static var gameAutoplay: String
    @UserDefault(key: "gameNoSound", defaultValue: "0")
    static var gameNoSound: String
    @UserDefault(key: "gameSkipTitle", defaultValue: "1")
    static var gameSkipTitle: String
} // UserDefaults.extension
