//
//  Card.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

struct CardModel: Identifiable {
    let id: UUID = UUID()
    var name: String
    var img: String
    var balance: Int
    var transactions: [TransactionModel] //カード毎の利用履歴を記録する
}
