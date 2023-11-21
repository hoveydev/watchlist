import SwiftUI

enum Colors {
    case wListPrimary
    case wListSecondary
    case wListTertiary
    
    var value: UIColor {
        switch self {
        case .wListPrimary:
            return UIColor(.red)
        case .wListSecondary:
            return UIColor(.gray)
        case .wListTertiary:
            return UIColor(.cyan)
        }
    }
}
