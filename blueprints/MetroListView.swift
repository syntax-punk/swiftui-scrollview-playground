//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 05/08/2023.
//

import SwiftUI

struct MetroListView: View {
    let list: [Nature]
    
    let rows = Array.init(repeating: GridItem(.fixed(140), spacing: 0), count: 2)
    //let rows = [GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 0) {
                ForEach(list) { item in
                    TileView(item: item, size: 140, cornerRadius: 0, shadow: 0)
                }
            }
        }
    }
}

struct MetroListView_Previews: PreviewProvider {
    static var previews: some View {
        MetroListView(list: Nature.examples_massive().shuffled())
    }
}
