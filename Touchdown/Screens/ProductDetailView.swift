//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
                // MARK: - HEADER
            Group {
                Text("Protective Gear")
                Text(product.name)
                    .font(.largeTitle.weight(.black))
            }
            .foregroundStyle(.white)
            
            HeroDetailView(product: product)
                .zIndex(1)
            
            VStack(alignment: .leading, spacing: 20) {
                RatingsView()
                    .padding(.top, -25)
                
                ScrollView {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.leading)
                }
                .scrollIndicators(.hidden)
                
                ActionView(color: product.formattedColor)
            }
            .background {
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .ignoresSafeArea(edges: [.horizontal, .bottom]).zIndex(1)
            }
        }
        .safeAreaPadding()
        .background(product.formattedColor)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        ProductDetailView(product: sampleProduct)
    }
}
