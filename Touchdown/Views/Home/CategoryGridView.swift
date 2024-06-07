//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView()
                } footer: {
                    SectionView(rotateClockwise: true)
                }
  
            }
            .frame(height: 160)
            .padding(.vertical, 10)
        }
        
    }
}

#Preview {
    CategoryGridView()
        .padding()
        .background(.colorBackground)
}
