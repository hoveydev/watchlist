import SwiftUI

enum Colors {
    case wListPrimary
    case wListSecondary
    case wListTertiary
    
    var value: CGColor {
        switch self {
        case .wListPrimary:
            guard let primaryColor = UIColor(named: "LaunchScreenBackgroundColor") else {
                return CGColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
            }
            return primaryColor.cgColor
        case .wListSecondary:
            return CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        case .wListTertiary:
            return CGColor(red: 0.1, green: 0.1, blue: 1.0, alpha: 1.0)
        }
    }
}
