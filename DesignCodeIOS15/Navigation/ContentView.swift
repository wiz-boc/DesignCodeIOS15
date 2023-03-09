//
//  ContentView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
                switch(selectedTab){
                    case .home:
                        HomeView()
                    case .explore:
                        AccountView()
                    case .notification:
                        AccountView()
                    case .library:
                        AccountView()
                }
            TabBar()
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 mini")
    }
}
