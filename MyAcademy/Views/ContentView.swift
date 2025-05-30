import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tag(1)
        }
        .overlay(alignment: .bottom) {
            CustomTabView(selection: $selection)
        }
    }
}

#Preview {
    ContentView()
}
