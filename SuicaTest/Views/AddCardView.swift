//
//  AddCardView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/31.
//

import SwiftUI

struct AddCardView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewsController: ViewsController
    @EnvironmentObject var cardViewModel: CardViewModel
    let viewWidth = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            Text("Suica選択")
                .fontWeight(.bold)
            List {
                HStack {
                    Button(action: {
                        viewsController.isChose.toggle()
                    }) {
                        Image(systemName: viewsController.isChose ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(Color.green)
                    }
                    Image("SuicaDefault")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(height: 100)
            }
            
            Spacer()
            Button(action: { //Cancel
                dismiss()
            }) {
                Text("受け取りをやめる")
            }
            
            Button(action: { //受け取る確定
                cardViewModel.addCard(
                    name: "",
                    img: cardViewModel.card.img,
                    balance: cardViewModel.card.balance)
                viewsController.isChose.toggle()
                dismiss()
            }) {
                Text("受け取る")
            }
            .disabled(!viewsController.isChose)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    AddCardView()
}
