import SwiftUI

struct WatchListSplashScreen: View {
    @State private var size: Double = 0.8
    @State private var opacity: Double = 0.5
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "movieclapper.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                Text("Watch List")
                    .font(Font.custom("AvenirNext-Regular", size: 26))
                    .foregroundColor(.black.opacity(0.8))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }
    }
}

#Preview {
    WatchListSplashScreen()
}
