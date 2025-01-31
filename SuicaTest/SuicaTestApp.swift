//
//  SuicaTestApp.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

@main
struct SuicaTestApp: App {
    @StateObject var cardViewModel = CardViewModel()
    @StateObject var viewsController: ViewsController
    
    init() {
        let cardVM = CardViewModel()
        self._cardViewModel = StateObject(wrappedValue: cardVM)
        self._viewsController = StateObject(wrappedValue: ViewsController(cardViewModel: cardVM))
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(cardViewModel)
                .environmentObject(viewsController)
        }
    }
}
