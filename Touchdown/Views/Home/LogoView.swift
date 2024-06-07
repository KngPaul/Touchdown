//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Paul Onawola on 30/05/2024.
//

import SwiftUI

struct LogoView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
        }
        .font(.title3.weight(.black))
        .foregroundStyle(.black)
        .opacity(isPresented ? 1 : 0)
        .offset(y: isPresented ? 0 :  -25)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5).delay(0.5)) {
                isPresented = true
            }
        }
    }
}

#Preview {
    LogoView()
}
