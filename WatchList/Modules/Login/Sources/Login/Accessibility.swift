import Foundation
import Components

public enum Module: String, AppModule {
    case login
}

public enum Screen: String, AppScreen {
    case login
}

public enum Component: String, AppComponent {
    case title
    case subtitle
    case emailLabel
    case emailInput
    case passwordLabel
    case passwordInput
    case loginButton
}
