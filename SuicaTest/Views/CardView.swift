//
//  CardsView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    
    let cardSize: CGSize
    
    init() {
        let imgWidth = UIScreen.main.bounds.width
        self.cardSize = CGSize(width: imgWidth, height: imgWidth / 1.585)
    }
    
    var body: some View {
        TabView(selection: $cardViewModel.selectedCardIndex) {
            ForEach (Array(cardViewModel.cards.enumerated()),id: \.element.id) { index, card in
                VStack {
                    ZStack {
                        Image(card.img)
                            .resizable()
                            .scaledToFit()
                        Text(card.name)
                            .font(.caption)
                    }
                    Text("¥\(card.balance)")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width: cardSize.width, height: cardSize.height)
    }
}

#Preview {
    CardView()
}
