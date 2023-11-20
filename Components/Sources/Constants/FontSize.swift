import SwiftUI

enum FontSize {
    case small
    case medium
    case large
    
    var value: CGFloat {
        switch self {
        case .small:
            return 14
        case .medium:
            return 18
        case .large:
            return 24
        }
    }
}

extension Font {
    static func customFont(_ size: FontSize) -> Font {
        return Font.system(size: size.value)
    }
}



public extension Font {
    static var wListSmall: Font {
        return customFont(.small)
    }

    static var wListMedium: Font {
        return customFont(.medium)
    }

    static var wListLarge: Font {
        return customFont(.large)
    }
}
