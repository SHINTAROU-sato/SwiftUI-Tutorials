//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 佐藤晋太朗 on 2021/02/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
