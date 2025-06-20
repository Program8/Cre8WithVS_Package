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
    let info: ModelViewInfo
    let viewBuilder: () -> AnyView
    let children:[ModelViewNode]
       init(info: ModelViewInfo, viewBuilder: @escaping  () -> AnyView, children: [ModelViewNode]) {
        self.info = info
        self.viewBuilder = viewBuilder
        self.children = children
    }       
}
func searchNodes(in nodes: [ModelViewNode], for query: String) -> [ModelViewNode] {
    nodes.compactMap { node in
        let matchSelf =
            node.info.title.localizedCaseInsensitiveContains(query) ||
            node.info.subtitle.localizedCaseInsensitiveContains(query) ||
            node.info.platforms.localizedCaseInsensitiveContains(query)

        let matchedChildren = searchNodes(in: node.children, for: query)

        if matchSelf || !matchedChildren.isEmpty {
            return ModelViewNode(
                info: node.info,
                viewBuilder: node.viewBuilder,
                children: matchedChildren
            )
        } else {
            return nil
        }
    }
}
