//
//  Suggestion.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/17/23.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "Reach"),
    Suggestion(text: "Design")
]
