import SwiftUI
import Components

struct WListTextFieldView: View {
    @State var textOne: String = ""
    @State var textTwo: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                WListTextField(text: $textOne, isSecure: false) {
                    WListText("Username:")
                }
                    .accessibilityIdentifier("UsernameTextField")
                WListTextField(text: $textTwo, isSecure: true) {
                    WListText("Password:")
                }
                    .accessibilityIdentifier("PasswordTextField")
            }
            .padding()
            Spacer()
        }
        .padding()
        .wListNavBar("WListTextField", placement: .principal, isMain: false)
        Spacer()
    }
}

//#Preview {
//    WListTextFieldView()
//}
