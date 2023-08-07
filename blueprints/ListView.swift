//
//  SwiftUIView.swift
//  
//
//  Created by Voogie on 04/08/2023.
//

import SwiftUI

struct ListView: View {
    let list: [Nature]
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 10, pinnedViews: .sectionHeaders) {
            Section {
                ForEach(list) { item in
                    RowView(nature: item)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
            } header: {
                Text("Last Section")
                    .modifier(SectionHeaderStyling())
            }

        }
        .listStyle(.plain)
        .padding()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(list: Nature.examples_massive())
    }
}
