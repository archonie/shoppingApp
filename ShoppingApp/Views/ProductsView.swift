//
//  ProductsView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 19.01.2025.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    ProductsView()
        .environmentObject(CartManager())
}
