//
//  TransactionModel.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import Foundation

struct TransactionModel: Identifiable {
    let id: UUID = UUID()
    let amount: Int
    let type: TransactionType
    var date: Date?
    
    enum TransactionType {
        case charge
        case payment
    }
}
