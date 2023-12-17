import SwiftUI
import FirebaseCore
import Login

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      return true
    }
}

@main
struct WatchListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var store: AppStore = AppStore(initial: AppState(), reducer: appReducer)
    var body: some Scene {
        WindowGroup {
            RootRoutesView().environment(store)
        }
    }
}
