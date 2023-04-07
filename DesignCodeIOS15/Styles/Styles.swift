//
//  Styles.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/3/23.
//

import SwiftUI

struct TitleModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote.weight(.semibold))
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(20)
            .accessibilityAddTraits(.isHeader)
    }
}

struct StrokeModifier: ViewModifier {
    var cornerRadius: CGFloat
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(
                        .linearGradient(
                            colors: [.white.opacity(colorScheme == .dark ? 0.1 : 0.3),.black.opacity(colorScheme == .dark ? 0.3 : 0.1)], startPoint: .top, endPoint: .bottom
                        )
                    )
                    .blendMode(.overlay)
                //.stroke(.black, style: .init(lineWidth: 5,lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [100,20], dashPhase: 20))
            }
    }
}

extension View {
    func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        modifier(StrokeModifier(cornerRadius: cornerRadius))
    }
    
    func titleStyle() -> some View {
        modifier(TitleModifer())
    }
}
