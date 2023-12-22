import SwiftUI

public struct WListButton: View {
    let label: String
    let action: () -> Void
    
    public init(_ label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }
    
    // MARK: Body
    public var body: some View {
        VStack {
            Button(action: action, label: {
                WListText(label)
                    .font(.wListBody)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    .frame(maxWidth: .infinity)
            })
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
