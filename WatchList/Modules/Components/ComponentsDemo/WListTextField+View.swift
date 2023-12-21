import SwiftUI

struct WListTextFieldView: View {
    @State var textOne: String = ""
    @State var textTwo: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                WListTextField("Username:", text: $textOne, isSecure: false)
                WListTextField("Password:", text: $textTwo, isSecure: true)
            }
            .padding()
            Spacer()
        }
        .padding()
        .wListNavBar("WListText", placement: .principal, isMain: false)
        Spacer()
    }
}

//#Preview {
//    WListTextFieldView()
//}
