//
//  ViewNode.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import Foundation
import SwiftUI
final class ModelViewNode:Identifiable,@unchecked Sendable{
    let id = UUID()
    let title: String
    let subtitle: String
    let platforms: String
//    let sectionHeader: String
//    let sectionFooter: String
    let viewBuilder: () -> AnyView
    let children:[ModelViewNode]

    
    init(title: String, subtitle: String, platforms: String, viewBuilder: @escaping () -> AnyView, children: [ModelViewNode]) {
        self.title = title
        self.subtitle = subtitle
        self.platforms = platforms
        self.viewBuilder = viewBuilder
        self.children = children
//        self.sectionHeader = ""
//        self.sectionFooter = ""
        
    }
    
}



