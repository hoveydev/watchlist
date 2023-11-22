import SwiftUI

@main
struct WatchListApp: App {
    var body: some Scene {
        WindowGroup {
            AppStart()
        }
    }
}

// implements the splash screen when the app is first opened
struct AppStart: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        !isActive ?
        AnyView(
            WatchListSplashScreen()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.isActive = true
                    }
                }
        ) : AnyView(ContentView())
    }
}
