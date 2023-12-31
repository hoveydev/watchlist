import SwiftUI

enum FontSize {
    case xsmall
    case small
    case medium
    case large
    
    var value: CGFloat {
        switch self {
        case .xsmall:
            return 14
        case .small:
            return 18
        case .medium:
            return 24
        case .large:
            return 34
        }
    }
}
