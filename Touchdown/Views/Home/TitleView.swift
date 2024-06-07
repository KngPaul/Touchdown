//
//  TitleView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle.weight(.heavy))
            
            Spacer()
        }
        .padding(.bottom, 6)
        
    }
}

#Preview {
    TitleView(title: "Helmet")
}
