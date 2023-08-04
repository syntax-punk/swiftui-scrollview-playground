//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 04/08/2023.
//

import SwiftUI

struct ListView: View {
    @State private var natureList = Nature.examples_massive()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(natureList) { item in
                    RowView(nature: item)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
            }
            .listStyle(.plain)
            .navigationTitle("Nature")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
