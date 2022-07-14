//
//  CodeEditApp.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/14/22.
//

import SwiftUI

@main
struct CodeEditApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: CodeEditDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
