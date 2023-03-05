//
//  MJGramApp.swift
//  MJGram
//
//  Created by GREGORY CUESTA on 3/5/23.
//

import SwiftUI

@main
struct MJGramApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
