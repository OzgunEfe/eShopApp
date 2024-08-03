//
//  CartManager.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCard(product: Product) {
        products = products.filter{ $0.id != product.id }
        total -= product.price
        
    }
}
