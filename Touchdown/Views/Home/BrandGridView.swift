//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        VStack {
            TitleView(title: "Brand")
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                    ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                    }
                }
                .frame(height: 200)
                .padding(.vertical, 1)
                
            }
            .scrollIndicators(.hidden)
            
        }
        
    }
}

#Preview {
    BrandGridView()
//        .padding()
}
