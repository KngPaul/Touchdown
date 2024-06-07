//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct ProductGridView: View {
    let products: [Product]
    
    var body: some View {
        VStack {
            TitleView(title: "Helmet")
            
            LazyVGrid(columns: gridLayout, spacing: 15) {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
            }
            
        }
        
    }
}

#Preview {
    ProductGridView(products: products)
}
