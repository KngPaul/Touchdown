//
//  HeroDetailView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct HeroDetailView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle.weight(.black))
                    .scaleEffect(1.2, anchor: .leading)
            }
            .offset(y: isPresented ? -50 : -75)
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isPresented ? 0 : -35)
            
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isPresented.toggle()
            }
        }
        
    }
}

#Preview {
    HeroDetailView()
}
