//
//  CardViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var card = CardModel(name: "MyCard", img: "SuicaDefault", balance: 0, transactions: [])
    @Published var cards: [CardModel] = []
    
    var chargeViewModel: ChargeViewModel?
    
    func addCard(name: String, img: String, balance: Int) {
        let newCard = CardModel(name: name, img: img, balance: balance, transactions: [])
        cards.append(newCard)
    }
}
