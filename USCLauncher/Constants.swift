//
//  Constants.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 15.01.2022.
//

import Foundation

let gameVersion = "Version: 0.5.0 / Git commit: 2023-01-22_6629139d"
let gameAttention = "The settings page has been disabled due to a bug in the game. "

let songsFolder = Bundle.main.resourceURL?.appendingPathComponent("unnamed-sdvx-clone/songs/").absoluteURL
let gameFolder = Bundle.main.resourceURL?.appendingPathComponent("unnamed-sdvx-clone").absoluteURL
let gameBin = Bundle.main.resourceURL?.appendingPathComponent("unnamed-sdvx-clone/usc-game").absoluteURL
let configFile = Bundle.main.resourceURL?.appendingPathComponent("unnamed-sdvx-clone/Main.cfg").absoluteURL

let USCSite = URL(string: "https://github.com/Drewol/unnamed-sdvx-clone#readme")!
let USCLauncherSite = URL(string: "https://github.com/serge-ivamov/USCLauncher#readme")!
