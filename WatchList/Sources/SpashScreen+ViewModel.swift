import SwiftUI

extension SplashScreen {
    public class ViewModel: ObservableObject {
        var title: String
        var size: Double
        var opacity: Double
        var textAnimation: () -> Void
        var buttonAction: () -> Void
        
        public init(title: String, size: Double, opacity: Double, textAnimation: @escaping () -> Void, buttonAction: @escaping () -> Void) {
            self.title = title
            self.size = size
            self.opacity = opacity
            self.textAnimation = textAnimation
            self.buttonAction = buttonAction
        }
        
        func setup(with state: AppState) {
            self.title = state.splashState.title
            self.size = state.splashState.size
            self.opacity = state.splashState.opacity
            // self.textAnimation = dispatch(.animateLogo)
            // self.buttonAction = dispatch(.login)
        }
    }
}
