import SwiftUI

extension ShapeStyle {
    static func customColor(_ color: Colors) -> Color {
        return Color(color.value)
    }
}

public extension ShapeStyle where Self == Color {
    
    static var wListPrimary: Color {
        return customColor(.wListPrimary)
    }
    
    static var wListSecondary: Color {
        return customColor(.wListSecondary)
    }
    
    static var wListTertiary: Color {
        return customColor(.wListTertiary)
    }
    
    static var wListError: Color {
        return customColor(.wListError)
    }
}
