//
//  ChargeView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct ChargeView: View {
    @ObservedObject var myCardViewModel: MyCardViewModel
    @StateObject var chargeAmountViewModel = ChargeAmountViewModel()
    let titleWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    myCardViewModel.backToHomeView()
                }) {
                    Text(ChargeViewText.btnCancel)
                }
                Spacer()
            }
            .padding()
            Spacer()
            //残高の表示
            HStack {
                ForEach(ChargeViewText.showBalance, id: \.self) { text in
                    Text(text)
                }
            }
            Spacer()
            //ボタンでチャージ額を選択できるように
            ForEach (chargeAmountViewModel.amountArray) { price in
                Button(action: {
                    
                }) {
                    Text("¥\(price.amount)")
                        .foregroundColor(.green)
                        .frame(width:100,height:25)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.green,lineWidth: 1)
                        )
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            Text(ChargeViewText.title)
                .padding(.top),
            alignment: .top
        )
    }
}

#Preview {
    ChargeView(myCardViewModel: MyCardViewModel())
}
