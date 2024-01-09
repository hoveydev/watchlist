import SwiftUI

public struct WListBaseView<Content>: View where Content: View {
    let backgroundColor: Color?
    let content: () -> Content
    
    public init(backgroundColor: Color? = Color.white, @ViewBuilder content: @escaping () -> Content) {
        self.backgroundColor = backgroundColor
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            content()
        }
    }
}

//#Preview {
//    WListBaseView()
//}
