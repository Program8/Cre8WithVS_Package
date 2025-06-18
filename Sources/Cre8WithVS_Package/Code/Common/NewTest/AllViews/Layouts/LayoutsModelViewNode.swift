//
//  LayoutsModelViewNode.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import SwiftUI
class LayoutsModelViewNode{
    static func getNode()->ModelViewNode{
        let node=ModelViewNode(info: .init(title: "Layouts", subtitle: "SwiftUI layout containers", platforms: "All"),viewBuilder: { AnyView(EmptyView())}, children:[
            ModelViewNode(info: .init(title: "Zstack", subtitle: "Zstack", platforms: "All"),viewBuilder: { AnyView(ZStackDemo())}, children:[]),
            ModelViewNode(info: .init(title: "VStack", subtitle: "VStack", platforms: "All"),viewBuilder: { AnyView(VStackDemo())}, children:[])
        ])
        return node
    }
}
