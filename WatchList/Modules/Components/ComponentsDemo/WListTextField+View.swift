import SwiftUI
import Components

struct WListTextFieldView: View {
    @State var textOne: String = ""
    @State var textTwo: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                WListTextField("Username:", text: $textOne, isSecure: false)
                    .accessibilityLabel("UsernameTextField")
                WListTextField("Password:", text: $textTwo, isSecure: true)
                    .accessibilityLabel("PasswordTextField")
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
