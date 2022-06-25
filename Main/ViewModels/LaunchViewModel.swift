//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by MAC15 on 19/06/22.
//

import Foundation

class LaunchViewModel: ObservableObject {
    

    let appState = AppState.shared
    

    init() {

        appState.currentScreen = .home
    }
    
}
