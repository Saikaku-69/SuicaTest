//
//  CardsView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        //Show Cards
        ScrollView(.horizontal) {
            HStack {
                ForEach (0...2, id: \.self) { card in
                    Image(systemName: "person.text.rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    CardsView()
}
