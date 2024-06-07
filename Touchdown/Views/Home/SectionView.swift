//
//  SectionView.swift
//  Touchdown
//
//  Created by Paul Onawola on 31/05/2024.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote.bold())
                .foregroundStyle(.white)
                .rotationEffect(.degrees(rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: 85)
        
    }
}

#Preview {
    SectionView(rotateClockwise: false)
}
