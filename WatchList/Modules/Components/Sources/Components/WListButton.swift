import SwiftUI

public struct WListButton<Label>: View where Label: View {
    let label: () -> Label
    let action: () -> Void
    
    public init(@ViewBuilder label: @escaping () -> Label, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }
    
    // MARK: Body
    public var body: some View {
        VStack {
            Button(action: action) {
                label()
                    .font(.wListBody)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    .frame(maxWidth: .infinity)
            }
            .background(.wListPrimary)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.vertical)
        }
    }
}

//#Preview {
//    WListButton("Test") {
//        print("tapped")
//    }
//}
