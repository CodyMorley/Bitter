//
//  BitterApp.swift
//  Bitter
//
//  Created by Cody Morley on 10/18/23.
//

import SwiftUI
import Firebase

@main
struct BitterApp: App {
    
    @StateObject var authViewModel = AuthenticationViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView()
            }
            .environmentObject(authViewModel)
        }
    }
}
