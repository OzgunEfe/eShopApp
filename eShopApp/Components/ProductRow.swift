//
//  ProductRow.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("£\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .resizable()
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .frame(width: 24, height: 24)
                .padding(.leading, 12)
                .onTapGesture {
                    cartManager.removeFromCard(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ProductRow(product: productList[3])
        .environmentObject(CartManager())
}
