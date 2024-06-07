//
//  RatingsView.swift
//  Touchdown
//
//  Created by Paul Onawola on 01/06/2024.
//

import SwiftUI

struct RatingsView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(colorGray)
                
                HStack(spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background {
                                    Color(colorGray)
                                        .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                                .foregroundStyle(.white)
                        }
                        
                    }
                }
                
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(colorGray)

                HStack(spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote.weight(.black))
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background {
                                    Color.white
                                        .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                                .background {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                }
                        }
                        
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    RatingsView()
}
