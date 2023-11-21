import SwiftUI

enum Colors {
    case wListPrimary
    case wListSecondary
    case wListTertiary
    
    var value: UIColor {
        switch self {
        case .wListPrimary:
            return UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        case .wListSecondary:
            return UIColor(.gray)
        case .wListTertiary:
            return UIColor(.cyan)
        }
    }
}
