//
//  CardsView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct CardsView: View {
    let imgWidth = UIScreen.main.bounds.width
    var body: some View {
        TabView {
            ForEach (0...2, id: \.self) { card in
                Image("SuicaDefault")
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .scaledToFit()
        .frame(width: imgWidth)
    }
}

#Preview {
    CardsView()
}
