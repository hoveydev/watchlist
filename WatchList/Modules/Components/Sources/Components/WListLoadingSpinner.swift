import SwiftUI

public struct WListLoadingSpinner: View {
    @State private var isSpinningClockwise1: Bool = true
    @State private var isSpinningClockwise2: Bool = true
    @State private var isSpinningClockwise3: Bool = true
    @State private var isSpinningClockwise4: Bool = true
    
    let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.25)
                    .stroke(.wListPrimary, lineWidth: 3)
                    .frame(width: 50, height: 50, alignment: .center)
                    .rotationEffect(Angle(degrees: isSpinningClockwise1 ? 0 : 360))
                    .onAppear() {
                        withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                            isSpinningClockwise1.toggle()
                        }
                    }
                Circle()
                    .trim(from: 0.5, to: 0.75)
                    .stroke(.wListPrimary, lineWidth: 3)
                    .frame(width: 50, height: 50, alignment: .center)
                    .rotationEffect(Angle(degrees: isSpinningClockwise2 ? 0 : 360))
                    .onAppear() {
                        withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                            isSpinningClockwise2.toggle()
                        }
                    }
                Circle()
                    .trim(from: 0, to: 0.25)
                    .stroke(.wListPrimary, lineWidth: 2)
                    .frame(width: 35, height: 35, alignment: .center)
                    .rotationEffect(Angle(degrees: isSpinningClockwise3 ? 0 : 360))
                    .onAppear() {
                        withAnimation(Animation.linear(duration: 0.9).repeatForever(autoreverses: false)) {
                            isSpinningClockwise3.toggle()
                        }
                    }
                Circle()
                    .trim(from: 0.5, to: 0.75)
                    .stroke(.wListPrimary, lineWidth: 2)
                    .frame(width: 35, height: 35, alignment: .center)
                    .rotationEffect(Angle(degrees: isSpinningClockwise4 ? 0 : 360))
                    .onAppear() {
                        withAnimation(Animation.linear(duration: 0.9).repeatForever(autoreverses: false)) {
                            isSpinningClockwise4.toggle()
                        }
                    }
            }
            WListText(text)
                .font(.wListBody)
                .foregroundStyle(.wListPrimary)
        }
    }
}

#Preview {
    WListLoadingSpinner(text: "loading...")
}
