//
//  SearchView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 17.01.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search For Furniture", text: $search)
                    .padding()
            }
            .background(.kSecondary)
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(.kPrimary)
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
