//
//  ChargeView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct ChargeView: View {
    @ObservedObject var myCardViewModel: MyCardViewModel
    @ObservedObject var chargeAmountViewModel = ChargeAmountViewModel.shared
    let titleWidth = UIScreen.main.bounds.width
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
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
                VStack {
                    Text(ChargeViewText.showBalance[0])
                    Text("¥\(myCardViewModel.card.amount)")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text(ChargeViewText.showBalance[1])
                    Text("¥\(myCardViewModel.card.amount + chargeAmountViewModel.afterChargingAmount)")
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
                ForEach (chargeAmountViewModel.amountArray) { price in
                    Button(action: {
                        chargeAmountViewModel.chargeForAmount(price.price)
                    }) {
                        Text("¥\(price.price)")
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
            
            Button(action: {
                myCardViewModel.charge()
                chargeAmountViewModel.afterChargingAmount = 0
            }) {
                Text("確定")
                    .foregroundColor(.green)
                    .frame(width:100,height:25)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.green,lineWidth: 1)
                    )
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
