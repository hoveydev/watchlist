import SwiftUI
// import Components
// import Firebase

public struct LoginView: View {
    // @EnvironmentObject var store: AppStore
    @State public var email: String
    @State public var password: String
    
    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    public var body: some View {
        VStack {
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Click me!") {
                print("button clicked")
                // login()
            }
        }
        .padding()
    }
    
//    func login() {
//        Auth.auth().signIn(withEmail: email, password: password) { result, error in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//            } else {
//                print("success")
//                store.dispatch(.login)
//            }
//        }
//    }
}

//#Preview {
//    LoginView()
//}
