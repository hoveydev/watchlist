import SwiftUI

struct WListNavBar: ViewModifier {
    var text: String
    var placement: ToolbarItemPlacement
    var isMain: Bool
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: placement) {
                    HStack {
                        isMain ? navText(text: text, font: .wListSubtitle) : navText(text: text, font: .wListNavTitle)
                    }.padding()
                }
            }
            .toolbarRole(.editor) // removes back text
    }
}

struct navText: View {
    var text: String
    var font: Font

    var body: some View {
        WListText(text)
            .font(font)
    }
}

extension View {
    public func wListNavBar(_ text: String, placement: ToolbarItemPlacement, isMain: Bool) -> some View {
        modifier(WListNavBar(text: text, placement: placement, isMain: isMain))
    }
}
