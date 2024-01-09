import SwiftUI

public struct WListLoadingSpinner<Text>: View where Text: View {
    @State var rotationAngle1: Double = 0
    @State var rotationAngle2: Double = 0
    @State var rotationAngle3: Double = 0
    @State var rotationAngle4: Double = 0
    let rotationIncrement: Double = 360.0
    
    let text: () -> Text
    
    public init(text: @escaping () -> Text) {
        self.text = text
    }
    
    public var body: some View {
        WListBaseView(backgroundColor: .clear) {
            VStack {
                ZStack {
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(.wListPrimary, lineWidth: 3)
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(Angle(degrees: rotationAngle1))
                        .onAppear() {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                                withAnimation(.linear(duration: 1.0)) {
                                    rotationAngle1 += rotationIncrement
                                }
                            }
                        }
                        .accessibilityAddTraits(.isImage)
                    Circle()
                        .trim(from: 0.5, to: 0.75)
                        .stroke(.wListPrimary, lineWidth: 3)
                        .frame(width: 50, height: 50, alignment: .center)
                        .rotationEffect(Angle(degrees: rotationAngle2))
                        .onAppear() {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                                withAnimation(.linear(duration: 1.0)) {
                                    rotationAngle2 += rotationIncrement
                                }
                            }
                        }
                        .accessibilityAddTraits(.isImage)
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(.wListPrimary, lineWidth: 2)
                        .frame(width: 35, height: 35, alignment: .center)
                        .rotationEffect(Angle(degrees: rotationAngle3))
                        .onAppear() {
                            Timer.scheduledTimer(withTimeInterval: 0.9, repeats: true) { _ in
                                withAnimation(.linear(duration: 0.9)) {
                                    rotationAngle3 += rotationIncrement
                                }
                            }
                        }
                        .accessibilityAddTraits(.isImage)
                    Circle()
                        .trim(from: 0.5, to: 0.75)
                        .stroke(.wListPrimary, lineWidth: 2)
                        .frame(width: 35, height: 35, alignment: .center)
                        .rotationEffect(Angle(degrees: rotationAngle4))
                        .onAppear() {
                            Timer.scheduledTimer(withTimeInterval: 0.9, repeats: true) { _ in
                                withAnimation(.linear(duration: 0.9)) {
                                    rotationAngle4 += rotationIncrement
                                }
                            }
                        }
                        .accessibilityAddTraits(.isImage)
                }
                text()
                    .font(.wListBody)
                    .foregroundStyle(.wListPrimary)
            }
        }
    }
}

//#Preview {
//    WListLoadingSpinner {
//        WListText("loading...")
//    }
//}
