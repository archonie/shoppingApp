//
//  CartView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 19.01.2025.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                HStack {
                    Text("Total: ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
