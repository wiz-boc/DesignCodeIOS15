//
//  SectionView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/12/23.
//

import SwiftUI

struct SectionView: View {
    var section = courseSections[0]
    @EnvironmentObject var model: Model
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                    .overlay(PlayView().overlay(CircularView(value: section.progress, lineWidth: 5).padding(24)))
                content
                    .offset(y: 120)
                    .padding(.bottom, 200)
            }
            .background(Color("Background"))
            .ignoresSafeArea()
            
            button
        }
    }
    
    
    var cover: some View {
            VStack{
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .foregroundStyle(.black)
            .background(
                Image(section.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(maxWidth: 500)
            )
            .background(
                Image(section.background)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
            }
            .overlay(content: {
                overlayContent
            })
            .frame(height: 500)
        
    }
    
    var overlayContent: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(section.title)
                .font(.footnote)
            Text(section.subtitle.uppercased())
                .font(.footnote.weight(.semibold))
            Text(section.text)
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
                .opacity(0)
            
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
            .opacity(0)
        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
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
                dismiss()
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

}

struct SectionView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        SectionView()
            .environmentObject(Model())
    }
}
