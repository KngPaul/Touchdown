//
//  FooterView.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-linear")
                .renderingMode(.template)
                .layoutPriority(0)
            
            Text("Copyright © Paul\nAll rights reserved")
                .font(.footnote.bold())
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    FooterView()
}
