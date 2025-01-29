//
//  MyCardViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

class MyCardViewModel: ObservableObject {
    //自分が追加したカードを管理する
    @Published var isCharge: Bool = false
    @Published var isHomeView: Bool = false
    @Published var card: Card = Card(img: "", name: "", amount: 0)
    
    @Published var myCards:[Card] = []
    
    func showChargeView() {
        self.isCharge = true
        self.isHomeView = false
    }
    func backToHomeView() {
        self.isHomeView = true
        self.isCharge = false
    }
    
    func charge() {
        card.amount += ChargeAmountViewModel.shared.afterChargingAmount
    }
    
    func createMycard() {
        //最大カード枚数を超えない場合のみ追加できる
        
    }
}
