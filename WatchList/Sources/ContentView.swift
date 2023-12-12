import SwiftUI
import Components

struct ContentView: View {
    @EnvironmentObject var store: AppStore
    var body: some View {
        VStack {
            LoginView()
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}
