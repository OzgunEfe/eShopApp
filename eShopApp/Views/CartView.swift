//
//  CardView.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ScrollView{
            Text("Your cart is empty.")
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CardView()
}
