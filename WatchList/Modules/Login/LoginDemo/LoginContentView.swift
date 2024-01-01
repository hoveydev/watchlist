import SwiftUI
import Login

struct LoginContentView: View {
    var viewModel: Login.ViewModel
    
    init(viewModel: Login.ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Login(viewModel: viewModel)
        }
    }
}

//#Preview {
//    ContentView()
//}
