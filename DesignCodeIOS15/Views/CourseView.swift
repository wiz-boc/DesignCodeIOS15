//
//  CourseView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/12/23.
//

import SwiftUI

struct CourseView: View {
    var namespace: Namespace.ID
    var course = courses[0]
    @Binding var show: Bool
    @State var appear = [false,false,false]
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                content
                    .offset(y: 120)
                    .padding(.bottom, 200)
                    .opacity(appear[2] ? 1 : 0)
            }
            .background(Color("Background"))
            .ignoresSafeArea()
            
            button
        }
        .onAppear{
            fadeIn()
        }
        .onChange(of: show) { newValue in
            fadeOut()
        }
    }
    
    
    var cover: some View {
        GeometryReader { proxy in
            let scrollY = proxy.frame(in: .global).minY
            VStack{
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: scrollY > 0 ? 500 + scrollY : 500)
            .foregroundStyle(.black)
            .background(
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY * -0.8 : 0)
            )
            .background(
                Image(course.background)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "background\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY : 0)
                    .scaleEffect(scrollY > 0 ? scrollY  / 1000 + 1 : 1)
                    .blur(radius: scrollY / 10)
            )
            .mask {
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .matchedGeometryEffect(id: "mask\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY : 0)
            }
            .overlay(content: {
                overlayContent
                    .offset(y: scrollY > 0 ? -scrollY * -0.6 : 0)
        })
        }
        .frame(height: 500)
    }
    
    var overlayContent: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(course.title)
                .font(.footnote)
                .matchedGeometryEffect(id: "text\(course.id)", in: namespace)
            Text(course.subtitle.uppercased())
                .font(.footnote.weight(.semibold))
                .matchedGeometryEffect(id: "subtitle\(course.id)", in: namespace)
            Text(course.text)
                .font(.largeTitle.weight(.bold))
                .matchedGeometryEffect(id: "title\(course.id)", in: namespace)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
                .opacity(appear[0] ? 1 : 0)
            
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
            .opacity(appear[1] ? 1 : 0)
        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .matchedGeometryEffect(id: "blur\(course.id)", in: namespace)
        )
        .offset(y: 200)
        .padding(20)
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("SwiftUI is hands-down the best way for designers to take a firstt step into code")
                .font(.title3).fontWeight(.medium)
            
            Text("This course")
                .font(.title3).bold()
            
            Text("askdnsajlk andlskdna lknadlas dlajsdliasjd ljadoijasd lajdopsjd ojodjad oaljsdopajsd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln aedd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln")
            
            Text("askdnsajlk andlskdna lknadlas dlajsdliasjd ljadoijasd lajdopsjd ojodjad oaljsdopajsd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln aedd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln")
                .font(.title).bold()
            
            Text("Mutliplatform app ")
                .font(.title).bold()
            
            Text("askdnsajlk andlskdna lknadlas dlajsdliasjd ljadoijasd lajdopsjd ojodjad oaljsdopajsd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln aedd osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln osd jaopsd ;ojsdpo ;pjasdojsadnadlsdjosjd;padnspjdhasdn opasdnasdbfboeidfln")
        }
        .padding(20)
    }
    
    var button: some View {
        Button {
            withAnimation(.closeCard) {
                show.toggle()
                model.showDetail.toggle()
            }
        } label: {
            Image(systemName: "xmark")
                .font(.body.weight(.bold))
                .foregroundColor(.secondary)
                .padding(8)
                .background(.ultraThinMaterial, in: Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .padding(20)
        .ignoresSafeArea()
    }
    
    //MARK:- functions
    
    func fadeIn(){
        withAnimation(.easeInOut.delay(0.3)) {
            appear[0] = true
        }
        withAnimation(.easeInOut.delay(0.3)) {
            appear[1] = true
        }
        withAnimation(.easeInOut.delay(0.3)) {
            appear[2] = true
        }
    }
    
    func fadeOut(){
        appear[0] = false
        appear[1] = false
        appear[2] = false
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseView(namespace: namespace, show: .constant(true))
            .environmentObject(Model())
    }
}
