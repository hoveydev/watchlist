import SwiftUI
import Components

struct ContentView: View {
    var body: some View {
        VStack {
            WListText("Hello World!").font(.wListSmall)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
