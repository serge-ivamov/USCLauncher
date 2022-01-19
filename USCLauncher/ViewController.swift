//
//  ViewController.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 13.01.2022.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var runPB: NSButton!

    @IBOutlet var gameVersionLBL: NSTextField!
    @IBOutlet var gameAttentionLBL: NSTextField!

    @IBOutlet var gameForceFSPB: NSButton!
    @IBOutlet var gameAutoplayPB: NSButton!
    @IBOutlet var gameNoSoundPB: NSButton!
    @IBOutlet var gameSkipTitlePB: NSButton!

    @IBOutlet var revealSongsFolderPB: NSButton!
    @IBOutlet var revealGameFolderPB: NSButton!
    @IBOutlet var revealConfigPB: NSButton!

    @IBOutlet var visitUSCSitePB: NSButton!
    @IBOutlet var visitUSCLauncherSitePB: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameVersionLBL.stringValue = gameVersion
        gameAttentionLBL.stringValue = gameAttention

        gameForceFSPB.stringValue = UserDefaults.gameForceFS
        gameAutoplayPB.stringValue = UserDefaults.gameAutoplay
        gameNoSoundPB.stringValue = UserDefaults.gameNoSound
        gameSkipTitlePB.stringValue = UserDefaults.gameSkipTitle
    }

    // Exit app on <Esc> press.
    override func cancelOperation(_ sender: Any?) {
        NSApplication.shared.terminate(self)
    } // cancelOperation()

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func runPBAction(_ sender: Any) {
        runGame()
    } // runPBAction()

    @IBAction func quitPBAction(_ sender: Any) {
        NSApplication.shared.terminate(self)
    } // quitPBAction()

    @IBAction func gameForceFSAction(_ sender: Any) {
        UserDefaults.gameForceFS = gameForceFSPB.stringValue
    } // gameForceFSAction()

    @IBAction func gameAutoplayAction(_ sender: Any) {
        UserDefaults.gameAutoplay = gameAutoplayPB.stringValue
    } // gameAutoplayAction()

    @IBAction func gameNoSoundAction(_ sender: Any) {
        UserDefaults.gameNoSound = gameNoSoundPB.stringValue
    } // gameNoSoundAction()

    @IBAction func gameSkipTitleAction(_ sender: Any) {
        UserDefaults.gameSkipTitle = gameSkipTitlePB.stringValue
    } // gameSkipTitleAction()

    @IBAction func revealSoundFolderAction(_ sender: Any) {
        showInFinder(url: songsFolder)
    } // revealSoundFolderAction()

    @IBAction func revealGameFolderAction(_ sender: Any) {
        showInFinder(url: gameBin)
    } // revealGameFolderAction()

    @IBAction func revealConfigAction(_ sender: Any) {
        showInFinder(url: configFile)
    } // revealConfigAction()

    @IBAction func visitUSCSiteAction(_ sender: Any) {
        NSWorkspace.shared.open(USCSite)
    } // visitUSCSiteAction()

    @IBAction func visitUSCLauncherSiteAction(_ sender: Any) {
        NSWorkspace.shared.open(USCLauncherSite)
    } // visitUSCLauncherSiteAction()
}

