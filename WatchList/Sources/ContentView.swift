import SwiftUI
import Components

struct ContentView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        VStack {
            WListText(store.state.textTest).font(.wListTitle)
            Button("Click Me!") {
                store.dispatch(.changeText)
            }
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}
