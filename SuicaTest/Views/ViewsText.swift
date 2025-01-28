//
//  ViewsText.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import Foundation

struct ViewsText {
    static let title: String = "Suica選択"
    static let subTitle: String = "受け取るSuicaを選択してください"
    static let btnCancel: String = "受け取るをやめる"
    static let btnOk: String = "受け取る"
}

struct ChargeViewText {
    static let title: String = "入金(チャージ)"
    static let btnCancel: String = "キャンセル"
    static let txtCurrentBalance: String = "現在の残高"
    static let txtAfterCharging: String = "チャージ後の残高"
    
    static let showBalance:[String] = [
        txtCurrentBalance, "→", txtAfterCharging
    ]
}
