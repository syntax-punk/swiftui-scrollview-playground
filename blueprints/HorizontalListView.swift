//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 05/08/2023.
//

import SwiftUI

struct HorizontalListView: View {
    let list: [Nature]
    let height: CGFloat
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(list) { item in
                    CardView(item: item, textFont: .caption)
                }
            }
            .padding()
        }
        .frame(height: height)
    }
}

struct HorizontalListView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalListView(list: Nature.examples_massive(), height: 148)
    }
}
 
