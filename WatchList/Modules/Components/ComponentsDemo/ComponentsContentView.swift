import SwiftUI
import Components

struct ComponentContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    NavigationLink("WListText", destination: WListTextView())
                    NavigationLink("WListTextField", destination: WListTextFieldView())
                }
            }
            .wListNavBar("Components", placement: .topBarLeading, isMain: true)
        }
    }
}

//#Preview {
//    ComponentContentView()
//}
