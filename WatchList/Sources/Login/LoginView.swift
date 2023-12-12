import SwiftUI
import Components
import Firebase

struct LoginView: View {
    @EnvironmentObject var store: AppStore
    @State private var email: String
    @State private var password: String
    var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button(store.state.loginState.loginButtonText) {
                print("button clicked")
                login()
            }
        }
        .padding()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
                store.dispatch(.login)
            }
        }
    }
}

//#Preview {
//    LoginView()
//}
