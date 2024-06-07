//
//  ActionView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct ActionView: View {
    @State private var counter: Int = 0
    let color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
            }
            .padding(10)
            .frame(width: 50, height: 50)
            .background {
                color.opacity(0.3)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
                    
            Button {
                feedback.impactOccurred()
            } label: {
                Spacer()
                Text("Add to cart".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(height: 50)
            .background {
                color
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Picker("", selection: $counter) {
                ForEach(0...100, id: \.self) { count in
                    Text("\(count)")
                }
            }
            .tint(color)
            .frame(idealWidth: 50, maxHeight: 50, alignment: .center)
            .background {
                RoundedRectangle(cornerRadius: 6)
                    .stroke(color, lineWidth: 2)
            }
            
        }
        .font(.system(.title2, design: .rounded))
        .foregroundStyle(.black)
//        .imageScale(.large)
    }
}

#Preview {
    ActionView(color: sampleProduct.formattedColor)
}
