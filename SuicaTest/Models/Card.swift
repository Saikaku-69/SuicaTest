//
//  Card.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

struct Card {
    let id = UUID()
    var img: String
    var name: String
    
    init(img: String, name: String) {
        self.img = img
        self.name = name
    }
}
