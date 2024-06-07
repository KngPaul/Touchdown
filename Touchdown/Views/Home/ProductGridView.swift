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
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        ProductItemView(product: product)
                    }
                    .tint(.secondary)
                    .onTapGesture {
                        feedback.impactOccurred()
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    ProductGridView(products: products)
}
