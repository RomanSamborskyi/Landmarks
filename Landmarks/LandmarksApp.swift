//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 25.06.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
