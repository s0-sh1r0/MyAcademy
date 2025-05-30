import SwiftUI

struct Custom3DBackground: ViewModifier {
    
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    
    var color = Color(hex: "#000000")
    
    @State var rotation: CGFloat = 0.0
    
    func body(content: Content) -> some View {
        content
            .frame(width: width,height: height)
            .cornerRadius(cornerRadius)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [color.opacity(0.3), color.opacity(1.0)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.white.opacity(0.0), Color.white.opacity(0.7)]),
                            startPoint: .bottom,
                            endPoint: .top
                        ),
                        lineWidth: 1
                    )
            )
    }
}

extension View {
    func custom3DBackground(width: CGFloat, height: CGFloat, cornerRadius: CGFloat) -> some View {
        modifier(Custom3DBackground(width: width, height: height, cornerRadius: cornerRadius))
    }
}
