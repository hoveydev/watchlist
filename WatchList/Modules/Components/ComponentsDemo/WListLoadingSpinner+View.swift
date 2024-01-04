import SwiftUI
import Components

struct WListLoadingSpinnerView: View {
    var body: some View {
        WListLoadingSpinner {
            WListText("loading...")
                .accessibilityIdentifier("WListLoadingSpinnerText")
        }
        .accessibilityIdentifier("WListLoadingSpinner")
        .padding(.horizontal)
        .wListNavBar("WListText", placement: .principal, isMain: false)
    }
}

//#Preview {
//    WListLoadingSpinnerView()
//}
