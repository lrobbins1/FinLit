//
//  TeenFinLitAppApp.swift
//  TeenFinLitApp
//
//  Created by Lucas Robbins on 9/24/22.
//

import SwiftUI

@main
struct FinTeen: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
