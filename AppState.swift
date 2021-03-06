//
//  AppState.swift
//  iOSAppTemplate
//
//  Created by MAC15 on 19/06/22.
//

import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum AppScreens: String {
        case launch
        case login
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
