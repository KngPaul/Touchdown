//
//  Product.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
    let color: [Double]
    
    var formattedColor: Color {
        Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        price.formatted(.currency(code: "USD"))
    }
}
