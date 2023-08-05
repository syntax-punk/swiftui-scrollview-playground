//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 04/08/2023.
//

import SwiftUI

struct CardView: View {
    let item: Nature
    let textFont: Font
    
    var body: some View {
        Image(item.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(16)
            .shadow(radius: 4)
        
            .overlay(alignment: .bottomTrailing) {
                Text(item.name)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .font(textFont)
            }
    }
        
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: Nature.exampleTrees(), textFont: .title3)
            .padding()
    }
}
