//
//  CardView.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.paymentSuccess {
                Text("Thanks for your purchase!")
                    .padding()
            } else {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack{
                        Text("Your cart total is:")
                        Spacer()
                        Text("£\(cartManager.total)")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                    
                } else {
                    Text("Your cart is empty.")
                }
            }

        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        .onDisappear{
            if cartManager.paymentSuccess {
                cartManager.pa
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
