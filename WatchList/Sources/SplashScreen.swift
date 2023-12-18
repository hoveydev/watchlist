import SwiftUI
import Components

struct SplashScreen: View {
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
            }
            .scaleEffect(viewModel.size)
            .opacity(viewModel.opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    viewModel.textAnimation()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    viewModel.buttonAction() // still need to test
                }
            }
        }
    }
}

//#Preview {
//    SplashScreen()
//}
