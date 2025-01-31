//
//  AmountViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import Foundation

class ChargeViewModel:ObservableObject {
    @Published var amount: Int = 0
    @Published var amountList:[String] = ["500","1000","3000","5000","10000","その他"]
    @Published var selectAmount: String = ""
    
    func charge() {
        switch selectAmount {
        case "500","1000","3000","5000","10000":
            amount = Int(selectAmount) ?? 0
        case "その他":
            break
        default:
            amount = 0
        }
    }
    
    func selectAmount(_ amount: String) {
        selectAmount = amount
        charge()
    }
}
