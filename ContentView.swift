import SwiftUI

struct ContentView: View {
    @State private var natureList: [Nature] = Nature.examples()
    @State private var natureListMassive: [Nature] = Nature.examples_massive()
    
    var body: some View {
        NavigationView {
            ScrollView {
                HorizontalListView(list: natureList, height: 160)
                MetroListView(list: natureListMassive)
                ListView(list: natureListMassive)
            }
            .navigationTitle("Nature List")
        }
    }
}

struct SectionHeaderStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

