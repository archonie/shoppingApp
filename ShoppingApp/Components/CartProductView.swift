//
//  CartProductView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 19.01.2025.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                    
                Text("$\(product.price)")
                    
            }
            .padding()
            Spacer()
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .background(Color(.kSecondary))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    CartProductView(product: productList[2])
        .environmentObject(CartManager())
}
