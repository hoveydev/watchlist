import SwiftUI
import Components

struct SplashScreen: View {
    // @EnvironmentObject var store: AppStore
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "movieclapper.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                Text(viewModel.title)
                    .font(.wListTitle)
                    .foregroundColor(.black.opacity(0.8))
                Button("Go to Login") {
                    viewModel.buttonAction()
                }
            }
            .scaleEffect(viewModel.size)
            .opacity(viewModel.opacity)
            .onAppear {
//                withAnimation(.easeIn(duration: 1.2)) {
//                    viewModel.textAnimation
//                }
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    store.dispatch(.login)
//                }
            }
        }
    }
}

//#Preview {
//    SplashScreen()
//}
