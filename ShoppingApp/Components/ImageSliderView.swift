//
//  ImageSliderView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 17.01.2025.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["fn1", "fn2", "fn3", "fn4", "fn5"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 180)
                    .cornerRadius(15)
            }
            
            HStack {
                ForEach(0..<slides.count, id: \.self) { index in
                    Circle()
                        .fill(self.currentIndex == index ? .kPrimary : .kSecondary)
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
                if self.currentIndex + 1 == slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
