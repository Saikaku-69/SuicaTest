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
    
    private var cardViewModel: CardViewModel
    
    init(cardViewModel: CardViewModel) {
        self.cardViewModel = cardViewModel
    }
    
    var isChargeDisabled: Bool {
        return cardViewModel.cards.count < 1
    }
    
    func presentAddCardView() {
        isAddCardViewPresented = true
    }
    
    func presentChargeView() {
        isChargeViewPresented = true
    }
}
