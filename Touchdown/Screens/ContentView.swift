//
//  ContentView.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    FeaturedTabView()
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                    
                    CategoryGridView()
                    
                    ProductGridView(products: products)
                    
                    BrandGridView()
                    
                    FooterView()
                }
                .safeAreaPadding(.all)
            }
            .background(.colorBackground)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        feedback.impactOccurred()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title3)
                            .foregroundStyle(.black)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    ZStack {
                        Image(systemName: "cart")
                            .font(.title3)
                            .foregroundStyle(.black)
                        
                        Circle()
                            .fill(.red)
                            .frame(width: 14, height: 14, alignment: .center)
                            .offset(x: 13, y: -10)
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
