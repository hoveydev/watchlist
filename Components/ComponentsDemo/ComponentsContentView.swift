import SwiftUI

struct ComponentContentView: View {
    var body: some View {
        VStack {
            WListText("Sample view from Components")
        }
        .padding()
    }
}

#Preview {
    ComponentContentView()
}
