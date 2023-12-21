import SwiftUI

struct WListTextView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                WListText("WatchList Title")
                    .font(.wListTitle)
                    .foregroundStyle(.wListPrimary)
                WListText("Watchlist subtitle")
                    .font(.wListSubtitle)
                    .foregroundStyle(.wListSecondary)
                    .padding(.bottom)
                WListText("This is the body text for this particular view. Here is an example of how text will look if it's pretty long compared to the title and subtitle")
                    .font(.wListBody)
                    .foregroundStyle(.wListTertiary)
            }
            .padding()
            Spacer()
        }
        .padding()
        .wListNavBar("WListText", placement: .principal, isMain: false)
        Spacer()
    }
}

//#Preview {
//    WListTextView()
//}
