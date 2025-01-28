//
//  CreateNewCardView.swift
//  SuicaTest
//
//  Created by cmStudent on 2025/01/28.
//

import SwiftUI

struct CreateNewCardListView: View {
    @ObservedObject var viewModel: CreateNewCardViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text(ViewsText.title)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text(ViewsText.subTitle)
            Spacer()
            
            Button(action: {
                dismiss()
            }) {
                Text(ViewsText.btnCancel)
            }
            
            Button(action: {
                dismiss()
            }) {
                Text(ViewsText.btnOk)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .fullScreenCover(isPresented: $viewModel.isHome) {
            SuicaListView()
        }
    }
}

#Preview {
    CreateNewCardListView(viewModel: CreateNewCardViewModel())
}
