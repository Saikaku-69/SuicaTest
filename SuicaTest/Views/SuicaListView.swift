//
//  SuicaListView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct SuicaListView: View {
    @StateObject private var newCardViewModel = CreateNewCardViewModel()
    @StateObject private var myCardViewModel = MyCardViewModel()
    var body: some View {
        VStack {
            HStack {
                // Setting For User
                Button(action: {
                    
                }) {
                    Image(systemName: "person.circle")
                        .font(.system(size: 30))
                }
                Spacer()
                //Add Cards
                Button(action: {
                    newCardViewModel.showCreate()
                }) {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 30))
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .overlay(
                Text("Suica一覧"),
                alignment: .center
            )
            //Show My Cards
            CardsView()
            
            //Cardによって残高を表示
            HStack {
                VStack(alignment: .leading) {
                    Text(ChargeViewText.txtAfterCharging)
                        .foregroundColor(.gray)
                        .font(.caption)
                    Text("¥\(myCardViewModel.card.amount)")
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer()
            }
            .padding()
            Spacer()
            // Move to ChargeView
            Button(action: {
                myCardViewModel.showChargeView()
            }) {
                Text(ChargeViewText.title)
            }
            Spacer()
            
            //Message[Cash]
            
            
            //Message[Write Memo Feature]
            
            //Button[Charge]
            
            // For {DefaultView,GreenTicketView,Histories,Setting}
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .fullScreenCover(isPresented: $newCardViewModel.isCreate) {
            CreateNewCardListView(viewModel: newCardViewModel)
        }
        .sheet(isPresented: $myCardViewModel.isCharge) {
            ChargeView(myCardViewModel: myCardViewModel)
        }
    }
}

#Preview {
    SuicaListView()
}
