//
//  AccountView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/3/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List{ 
                Section {
                    Text("Settings")
                    Text("Billing")
                    Text("Help")
                }
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
                
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
