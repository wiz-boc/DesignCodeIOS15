//
//  PreferenceKeys.swift
//  DesignCodeIOS15
//
//  Created by wizz on 3/9/23.
//

import SwiftUI

struct ScrollPreferenceKeys: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
