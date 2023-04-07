//
//  CircularView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 4/6/23.
//

import SwiftUI

struct CircularView: View {
    var value: CGFloat = 0.2
    var lineWidth: Double = 4
    @State var appear = false
    var body: some View {
        Circle()
            .trim(from: 0, to: value)
            .stroke(style: StrokeStyle(lineWidth: lineWidth,lineCap: .round))
            .fill(.angularGradient(colors: [.purple,.pink,.purple], center: .center, startAngle: .degrees(0), endAngle: .degrees(360)))
            .rotationEffect(.degrees(270))
            .onAppear{
                withAnimation {
                    appear = true
                }
            }
            .onDisappear{
                appear = false
            }
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
