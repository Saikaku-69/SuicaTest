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
    
    func showChargeView() {
        self.isCharge = true
        self.isHomeView = false
    }
    func backToHomeView() {
        self.isHomeView = true
        self.isCharge = false
    }
}
