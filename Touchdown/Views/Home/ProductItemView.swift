//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background {
                product.formattedColor
            }
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(product.name)
                .font(.title3.weight(.black))
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
        }
        
    }
}

#Preview {
    ProductItemView(product: products[0])
        .frame(width: 200, height: 300)
        .padding()
}
