//
//  ButtonsStyle.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import SwiftUI

extension View {
    func customButtonStyle() -> some View {
        self
            .font(.system(size: 25))
            .foregroundColor(.green)
    }
}

extension View {
    func chargeButtonStyle() -> some View {
        self
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .padding(.horizontal, 50)
            .background(.green)
            .cornerRadius(10)
    }
}

extension View {
    func chargeAmountStyle() -> some View {
        self
            .foregroundColor(.green)
            .frame(width:80,height:20)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.green,lineWidth: 1)
            )
    }
}

extension View {
    func isChargeButtonStyle() -> some View {
        self
            .foregroundColor(.green)
            .frame(width:80,height:20)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.green,lineWidth: 1)
            )
    }
}
