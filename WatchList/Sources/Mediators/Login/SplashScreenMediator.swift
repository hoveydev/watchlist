import Foundation

final class SplashScreenMediator {
    init() { }
}

extension SplashScreenMediator {
    func createSplashScreenViewModel(store: AppStore) -> SplashScreen.ViewModel {
        let viewModel: SplashScreen.ViewModel = .init(
            title: "Watch List",
            size: 0.8,
            opacity: 0.5,
            textAnimation: {
                store.dispatch(.splash(.animateLogo))
            },
            buttonAction: {
                store.dispatch(.splash(.login))
            }
        )
        return viewModel
    }
}
