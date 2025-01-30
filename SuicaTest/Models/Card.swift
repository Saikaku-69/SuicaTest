//
//  Card.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    var img: String
    var name: String
    var amount: Int
}
