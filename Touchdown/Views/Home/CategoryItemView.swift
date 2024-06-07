//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                
                Spacer()
            }
            .padding()
            .foregroundStyle(.gray)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            }
        }
        
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(.colorBackground)
}
