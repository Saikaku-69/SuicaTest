//
//  SuicaListView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewsController: ViewsController
    @EnvironmentObject var cardViewModel: CardViewModel
    var body: some View {
        VStack {
            HStack {
                // Settings For User
                Button(action: {
                    
                }) {
                    Image(systemName: "person.circle")
                        .customButtonStyle()
                }
                Spacer()
                //Add Card Button
                Button(action: {
                    viewsController.presentAddCardView()
                }) {
                    Image(systemName: "plus.circle")
                        .customButtonStyle()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .overlay(
                Text("Suica一覧")
                    .fontWeight(.bold),
                alignment: .center
            )
            
            //Show My Cards
            CardView()
            Spacer()
            
            //Charge Button
            Button(action: {
                viewsController.presentChargeView()
            }) {
                Text("入金(チャージ)")
                    .chargeButtonStyle()
            }
            .disabled(viewsController.isChargeDisabled)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .fullScreenCover(isPresented: $viewsController.isAddCardViewPresented) {
            AddCardView()
        }
        .sheet(isPresented: $viewsController.isChargeViewPresented) {
            ChargeView(selectedCardIndex: cardViewModel.selectedCardIndex)
        }
    }
}

#Preview {
    HomeView()
}
