import SwiftUI
import Components

struct WListTextView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                WListText("WatchList Title")
                    .font(.wListTitle)
                    .foregroundStyle(.wListPrimary)
                    .accessibilityIdentifier("WListTitle")
                WListText("Watchlist subtitle")
                    .font(.wListSubtitle)
                    .foregroundStyle(.wListSecondary)
                    .padding(.bottom)
                    .accessibilityIdentifier("WListSubtitle")
                WListText("This is the body text for this particular view. Here is an example of how text will look if it's pretty long compared to the title and subtitle")
                    .font(.wListBody)
                    .foregroundStyle(.wListTertiary)
                    .accessibilityIdentifier("WListBody")
                WListText("This is text for an error message of some sort")
                    .font(.wListFooter)
                    .foregroundStyle(.wListError)
                    .accessibilityIdentifier("WListFooter")
            }
            .padding()
            Spacer()
        }
        .padding(.horizontal)
        .wListNavBar("WListText", placement: .principal, isMain: false)
        Spacer()
    }
}

//#Preview {
//    WListTextView()
//}
