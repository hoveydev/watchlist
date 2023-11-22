import SwiftUI

extension Font {
    static func customFont(_ size: FontSize, weight: FontWeight) -> Font {
        return Font.custom("PingFangHK-\(weight)", size: size.value)
    }
}

public extension Font {

    static var wListTitle: Font {
        return customFont(.large, weight: .regular)
    }
    
    static var wListNavTitle: Font {
        return customFont(.small, weight: .regular)
    }
    
    static var wListSubtitle: Font {
        return customFont(.medium, weight: .light)
    }
    
    static var wListBody: Font {
        return customFont(.small, weight: .thin)
    }
    
}
