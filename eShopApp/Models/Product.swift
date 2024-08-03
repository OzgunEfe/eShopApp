//
//  Product.swift
//  eShopApp
//
//  Created by Ozgun Efe on 03/08/2024.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange sweater", image: "sweater1", price: 55),
                   Product(name: "Red wine sweater", image: "sweater2", price: 63),
                   Product(name: "Sand sweater", image: "sweater3", price: 72),
                   Product(name: "Sea sweater", image: "sweater4", price: 48),
                   Product(name: "Cream sweater", image: "sweater5", price: 99),
                   Product(name: "Beige sweater", image: "sweater6", price: 58),
                   Product(name: "Grey sweater", image: "sweater7", price: 85),
                   Product(name: "Mink sweater", image: "sweater8", price: 89)]
