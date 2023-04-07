//
//  PlayView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 4/6/23.
//

import SwiftUI

struct PlayView: View {
    var body: some View {
        Image(systemName: "play.fill")
            .font(.system(size: 60))
            .frame(width: 120, height: 120)
            .offset(x: 2)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 46, style: .continuous))
            .strokeStyle(cornerRadius: 46)
            .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
            .overlay(
                Text("12:08")
                    .font(.footnote.weight(.semibold))
                    .padding(.vertical, 3)
                    .padding(.horizontal, 4)
                    .background(Color(UIColor.systemBackground).opacity(0.3))
                    .cornerRadius(4)
                    .offset(y: 44)
            )
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
