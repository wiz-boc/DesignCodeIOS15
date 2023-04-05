//
//  Model.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/15/23.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail: Bool = false
    @Published var selectedModel: Modal = .signIn
}

enum Modal: String {
    case signUP
    case signIn
}
