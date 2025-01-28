//
//  createNewCardViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

class CreateNewCardViewModel: ObservableObject {
    @Published var isCreate: Bool = false
    @Published var isHome: Bool = false
    
    func showCreate() {
        self.isCreate = true
        self.isHome = false
    }
    
    func showHome() {
        self.isHome = true
        self.isCreate = false
    }
}
