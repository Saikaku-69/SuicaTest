//
//  AddCardController.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import Foundation

class ViewsController: ObservableObject {
    @Published var isAddCardViewPresented: Bool = false
    @Published var isChargeViewPresented: Bool = false
    @Published var isChose: Bool = false
    
    func presentAddCardView() {
        isAddCardViewPresented = true
    }
    
    func presentChargeView() {
        isChargeViewPresented = true
    }
}
