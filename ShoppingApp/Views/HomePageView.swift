//
//  HomePageView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 18.01.2025.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                    AppBar()
                    SearchView()
                    ImageSliderView()
                    HStack {
                        Text("New Arrivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundStyle(.kPrimary)
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList) { product in
                                NavigationLink {
                                    ProductDetailsView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .environmentObject(cartManager)
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    Text("Shangai, China")
                        .font(.title2)
                        .foregroundStyle(.gray)
                    Spacer()
                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find The Most \nLuxurious")
                    .font(.largeTitle)
                    .bold()
                + Text(" Furniture")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.kPrimary)
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
