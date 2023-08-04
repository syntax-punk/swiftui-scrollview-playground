//
//  SwiftUIView.swift
//
//
//  Created by Voogie on 04/08/2023.
//

import SwiftUI

struct TileView: View {
    let item: Nature
    let size: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        Image(item.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            //.cornerRadius(cornerRadius)
            .shadow(radius: 6)
        
            .overlay(alignment: .bottomTrailing) {
                Text(item.name)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .font(.caption)
            }
    }
    
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(item: Nature.exampleDunes(),
                 size: 300,
                 cornerRadius: 16
        )
        .padding()
    }
}
