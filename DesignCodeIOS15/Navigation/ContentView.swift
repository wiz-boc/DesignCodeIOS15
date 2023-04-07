//
//  ContentView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @AppStorage("showModal") var showModal = false
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack(alignment: .bottom) {
                switch(selectedTab){
                    case .home:
                        HomeView()
                    case .explore:
                        ExploreView()
                    case .notification:
                        NotificationsView()
                    case .library:
                        LibraryView()
                }
            TabBar()
                .offset(y: model.showDetail ? 200 : 0)
            
            if showModal {
                ModalView()
                    .zIndex(1)
                    .accessibilityAddTraits(.isModal)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 88)
        }
        .dynamicTypeSize(.large ... .xxLarge)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 mini")
        }
        .environmentObject(Model())
    }
}
