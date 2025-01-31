//
//  ChargeView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct ChargeView: View {
    @EnvironmentObject var viewsController: ViewsController
    @EnvironmentObject var cardViewModel: CardViewModel
    @ObservedObject var chargeViewModel: ChargeViewModel
    @Environment(\.dismiss) private var dismiss
    
    let titleWidth = UIScreen.main.bounds.width
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    viewsController.isChargeViewPresented.toggle()
                }) {
                    Text("キャンセル")
                }
                Spacer()
            }
            .padding()
            Image(cardViewModel.card.img)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            //残高の表示
            HStack {
                VStack {
                    Text("現在の残高")
                    Text("¥\(cardViewModel.card.balance)")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("チャージ後の残高")
                    Text("¥\(cardViewModel.card.balance + chargeViewModel.amount)")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            .overlay(
                Text("→"),
                alignment: .center
            )
            Spacer()
            
            //ボタンでチャージ額を選択できるように
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach (chargeViewModel.amountList, id: \.self) { amount in
                    Button(action: {
                        chargeViewModel.selectAmount(amount)
                    }) {
                        Text("¥\(amount)")
                            .chargeAmountStyle()
                    }
                }
            }
            
            Button(action: {
                dismiss()
            }) {
                Text("確定")
                    .isChargeButtonStyle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            Text("入金（チャージ）")
                .padding(.top),
            alignment: .top
        )
    }
}

#Preview {
    ChargeView(chargeViewModel: ChargeViewModel())
}
