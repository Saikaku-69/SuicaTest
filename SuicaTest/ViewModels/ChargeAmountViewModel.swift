//
//  ChargeAmountViewModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

class ChargeAmountViewModel: ObservableObject {
    let amountArray:[ChargeAmount] = [
        ChargeAmount(amount: "500"),
        ChargeAmount(amount: "1000"),
        ChargeAmount(amount: "3000"),
        ChargeAmount(amount: "5000"),
        ChargeAmount(amount: "10000")
    ]
}
