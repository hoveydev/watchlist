import SwiftUI

public struct WListTextField: View {
    enum Field: Hashable {
        case text
        case secure
    }
    
    let title: String
    @Binding var text: String
    var isSecure: Bool
    @FocusState private var focusField: Field?

    public init(_ title: String, text: Binding<String>, isSecure: Bool) {
        self.title = title
        self._text = text
        self.isSecure = isSecure
    }

    // MARK: Body
    public var body: some View {
        VStack(alignment: .leading) {
            WListText(title)
                .font(.wListBody)
                .padding(.bottom, -5)
            isSecure ? SecureField("", text: $text)
                .focused($focusField, equals: .secure)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.wListSecondary, lineWidth: lineWidthOnFocus(for: .secure))
                ) : nil
            !isSecure ? TextField("", text: $text)
                .focused($focusField, equals: .text)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.wListSecondary, lineWidth: lineWidthOnFocus(for: .text))
                ) : nil
        }
    }
    
    func lineWidthOnFocus(for field: Field) -> CGFloat {
        return focusField == field ? 1 : 0.5
    }
}

#Preview {
    @State var text: String = ""
    return VStack {
        WListTextField("Email:", text: $text, isSecure: false)
    }.padding()
}
