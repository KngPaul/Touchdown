//
//  Constant.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI
let colorGray = Color(UIColor.systemGray4)

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct = products[2]

// MARK: - LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


let feedback = UIImpactFeedbackGenerator(style: .medium)
