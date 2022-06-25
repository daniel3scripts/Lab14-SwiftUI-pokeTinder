//
//  App_iOS.swift
//  iOSAppTemplate
//
//  Created by MAC15 on 19/06/22.
//

import SwiftUI

@main
struct MyApp_iOS: App {
    
    @StateObject var appState: AppState = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
                
            case .login:
                SignInView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            
            }
        }
    }
    
    
}
