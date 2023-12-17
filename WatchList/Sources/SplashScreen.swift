import SwiftUI
import Components

struct SplashScreen: View {
    @EnvironmentObject var store: AppStore
    
    var body: some View {
        let splashState = store.state.splashState
        VStack {
            VStack {
                Image(systemName: "movieclapper.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                Text(splashState.title)
                    .font(.wListTitle)
                    .foregroundColor(.black.opacity(0.8))
            }
            .scaleEffect(splashState.size)
            .opacity(splashState.opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    store.dispatch(.animateLogo)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    store.dispatch(.login)
                }
            }
        }
    }
}

//#Preview {
//    SplashScreen()
//}
