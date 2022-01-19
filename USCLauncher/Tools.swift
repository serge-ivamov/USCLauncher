//
//  Tools.swift
//  USCLauncher
//
//  Created by Serge Ivamov on 15.01.2022.
//

import Cocoa

func showInFinder(url: URL?) {
    guard let url = url else { return }

    if url.isDirectory {
        NSWorkspace.shared.selectFile(nil, inFileViewerRootedAtPath: url.path)
    }
    else {
        showInFinderAndSelectLastComponent(of: url)
    }
}

fileprivate func showInFinderAndSelectLastComponent(of url: URL) {
    NSWorkspace.shared.activateFileViewerSelecting([url])
}

extension URL {
    var isDirectory: Bool {
        (try? resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory == true
    }
}
