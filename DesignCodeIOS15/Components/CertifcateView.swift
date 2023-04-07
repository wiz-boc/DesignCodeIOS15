//
//  CertifcateView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 4/7/23.
//

import SwiftUI

struct CertifcateView: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 8){
                Text("SwiftUI for iOS 15")
                    .font(.title3.weight(.semibold))
                Text("Certificate")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 8){
                Text("Feb 25, 2022".uppercased())
                    .font(.footnote.weight(.semibold))
                Text("DesignCode instructor: Meng To")
                    .font(.footnote.weight(.medium))
            }
            .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(Color(UIColor.systemBackground).opacity(0.1), in: RoundedRectangle(cornerRadius: 16,style: .continuous))
                .strokeStyle(cornerRadius: 16)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        )
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
        
    }
}

struct CertifcateView_Previews: PreviewProvider {
    static var previews: some View {
        CertifcateView()
    }
}
