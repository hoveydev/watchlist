import SwiftUI

enum FontWeight {
    case ultralight
    case thin
    case light
    case regular
    case medium
    case semibold
    
    var value: String {
        switch self {
        case .ultralight:
            return "Ultralight"
        case .thin:
            return "Thin"
        case .light:
            return "Light"
        case .regular:
            return "Regular"
        case .medium:
            return "Medium"
        case .semibold:
            return "Semibold"
        }
    }
}
