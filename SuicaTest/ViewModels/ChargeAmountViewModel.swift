//
//  ChargeAmountViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

class ChargeAmountViewModel: ObservableObject {
    static let shared = ChargeAmountViewModel()
    
    @Published var afterChargingAmount:Int = 0
    
    let amountArray:[ChargeAmount] = [
        ChargeAmount(price: "500"),
        ChargeAmount(price: "1000"),
        ChargeAmount(price: "3000"),
        ChargeAmount(price: "5000"),
        ChargeAmount(price: "10000"),
        ChargeAmount(price: "その他")
    ]
    
    func chargeForAmount(_ amount: String) {
        switch amount {
        case "500","1000","3000","5000","10000":
            if let intAmount = Int(amount) {
                self.afterChargingAmount = 0
                afterChargingAmount += intAmount
            }
        case "その他":
            print("追加金額")
        default:
            print("0")
        }
    }
}
