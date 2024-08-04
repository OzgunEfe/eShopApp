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
    
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products.remove(at: index)
            total -= product.price
        }
    }
    
    func pay() {
        paymentHandler.startPayment(products: products, total: total) { success in
            self.paymentSuccess = success
            // After payment remove the items from cart and set the total value equal to zero.
            self.products = []
            self.total = 0
        }
    }
}

