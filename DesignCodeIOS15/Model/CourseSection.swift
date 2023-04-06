//
//  CourseSection.swift
//  DesignCodeIOS15
//
//  Created by wizz on 4/6/23.
//

import Foundation

struct CourseSection: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var background: String
    var logo: String
    var progress: CGFloat
}

var courseSections = [
    CourseSection(title: "SwiftUI for iOS 15", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 5", background: "Background 5", logo: "Logo 2", progress: 0.5),
    CourseSection( title: "UI Design for iOS 15", subtitle: "20 sections - 3 hours", text: "Design an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 3", background: "Background 4", logo: "Logo 4", progress: 0.2),
    CourseSection(title: "Flutter for designers", subtitle: "20 sections - 3 hours", text: "Flutter is a relatively new toolkit that makes it easy to build cross-platform apps that look gorgeous and is easy to use.", image: "Illustration 1", background: "Background 1", logo: "Logo 1", progress: 0.8),
    CourseSection(title: "React Hooks Advanced", subtitle: "20 sections - 3 hours", text: "Learn how to build a website with Typescript, Hooks, Contentful and Gatsby Cloud", image: "Illustration 2", background: "Background 2", logo: "Logo 3", progress: 0.0),
]



