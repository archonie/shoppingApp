//
//  Product.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 17.01.2025.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Leather Couch", image: "fn1", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
    Product(name: "Nice Couch", image: "fn2", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "Walmart", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
    Product(name: "Gray Couch", image: "fn3", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "Home Depot", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
    Product(name: "Beautiful Couch", image: "fn4", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
    Product(name: "Outdoor Couch", image: "fn5", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "Home Depot", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
    Product(name: "Green Couch", image: "fn1", description: "A leather couch is a luxirous and styling seating option for any living space. with its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.", supplier: "Walmart ", price: 350, width: "200 cm", height: "135 cm", diameter: "185 cm"),
]
