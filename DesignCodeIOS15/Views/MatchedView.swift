//
//  MatchedView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/11/23.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 12){
                        Text("SwiftUI")
                            .font(.largeTitle.weight(.bold))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("20 sections - 3 hours".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        
                        Text("Build an iOS app for iOS 15 with custom layputs, animation and ..")
                            .font(.footnote)
                            .matchedGeometryEffect(id: "text", in: namespace)
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .matchedGeometryEffect(id: "blue", in: namespace)
                    )
                }
                .foregroundStyle(.white)
                .background(
                    Image("Illustration 9")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: "image", in: namespace)
                )
                .background(
                    Image("Background 5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .mask {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                }
                .frame(height: 300)
                .padding(20)
                
            }else{
                ScrollView {
                    VStack{
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 500)
                    .foregroundStyle(.black)
                    .background(
                        Image("Illustration 9")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    .background(
                        Image("Background 5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask {
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                }
                    .overlay(content: {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Build an iOS app for iOS 15 with custom layputs, animation and ..")
                                .font(.footnote)
                                .matchedGeometryEffect(id: "text", in: namespace)
                            Text("20 sections - 3 hours".uppercased())
                                .font(.footnote.weight(.semibold))
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            Text("SwiftUI")
                                .font(.largeTitle.weight(.bold))
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Divider()
                            
                            HStack{
                                Image("Avatar Default")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .cornerRadius(10)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in :
                                                    RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    .strokeStyle(cornerRadius: 18)
                                Text("Taught by Meng To")
                            }
                        }
                        .padding(20)
                        .background(
                            Rectangle()
                                .fill(.ultraThinMaterial)
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .matchedGeometryEffect(id: "blue", in: namespace)
                        )
                        .offset(y: 200)
                        .padding(20)
                    })
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
