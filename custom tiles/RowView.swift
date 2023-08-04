//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 04/08/2023.
//

import SwiftUI

struct RowView: View {
    
    let nature: Nature
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(nature.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            VStack(alignment: .leading, spacing: 5) {
                Text(nature.name)
                Text(nature.desc)
                    .font(.caption)
            }
            .padding(.trailing, 10)
            .padding(.vertical, 6)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(nature: Nature.exampleLake())
    }
}
