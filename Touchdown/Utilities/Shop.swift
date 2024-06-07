//
//  Shop.swift
//  Touchdown
//
//  Created by Paul Onawola on 05/06/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
