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
    @StateObject var viewsController = ViewsController()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(cardViewModel)
                .environmentObject(viewsController)
        }
    }
}
