//
//  LandmarksDemoApp.swift
//  LandmarksDemo
//
//  Created by Apurva Jalgaonkar on 12/06/24.
//

import SwiftUI

@main
struct LandmarksDemoApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
