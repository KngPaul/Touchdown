//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background {
                Color.white
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .background {
                RoundedRectangle(cornerRadius: 12).stroke(.secondary, lineWidth: 1)
            }
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .padding()
}
