//
//  FructusApp.swift
//  Fructus
//
//  Created by Baris Saraldi on 16.08.2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboading: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboading {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
