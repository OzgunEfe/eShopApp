//
//  ContentView.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(productList, id: \.id) { product in
                    ProductCard(product: product)
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}

