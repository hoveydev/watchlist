import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      return true
    }
}

@main
struct WatchListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State private var rootRoutes: [RootRoutes] = []
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $rootRoutes) {
                AppStart()
                    .navigationDestination(for: RootRoutes.self) { route in
                        switch route {
                        case .login(let viewState):
                            Text("Login")
                        case .register(let viewState):
                            Text("Register")
                        case .splash(let viewState):
                            Text("Splash")
                        }
                    }
            }
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
        ) : AnyView(
            ContentView()
                .environmentObject(
                    AppStore(
                        initial: AppState(),
                        reducer: appReducer
                    )
                )
        )
    }
}
