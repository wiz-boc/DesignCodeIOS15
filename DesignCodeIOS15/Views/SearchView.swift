//
//  SearchView.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/17/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            List{
                ForEach(courses.filter { $0.title.contains(text) || $0.text.contains(text) || text == "" }) { course in
                    Text(course.title)
                }
            }
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: Text("SwiftUI, IOS, UIKIT"))
            .navigationTitle("Search")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
