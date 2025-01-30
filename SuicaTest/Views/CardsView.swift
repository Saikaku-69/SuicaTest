//
//  CardsView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct CardsView: View {
    @EnvironmentObject var myCardViewModel: MyCardViewModel
    let cardSize: CGSize
    
    init() {
        let imgWidth = UIScreen.main.bounds.width
        self.cardSize = CGSize(width: imgWidth, height: imgWidth / 1.585)
    }
    var body: some View {
        TabView {
            ForEach (myCardViewModel.myCards) { card in
                Image("SuicaDefault")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width: cardSize.width, height: cardSize.height)
    }
}

#Preview {
    CardsView()
}
