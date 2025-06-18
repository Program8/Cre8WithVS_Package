//
//  Test.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//

import SwiftUI
@MainActor
func LayoutsCategory()-> ModelViewNode{ModelViewNode(
    info: .init(title: "Layouts", subtitle: "SwiftUI layout containers", platforms: "All"),
    viewBuilder: { AnyView(EmptyView()) },
    children: [
        ModelViewNode(
            info: .init(title: "List", subtitle: "Scrollable list", platforms: "All"),
            viewBuilder: {
                AnyView(List {
                    Text("Item 1")
                    Text("Item 2")
                })
            },
            children: []
        ),
        ModelViewNode(
            info: .init(title: "Stack", subtitle: "ZStack, HStack, VStack", platforms: "All"),
            viewBuilder: { AnyView(EmptyView()) },
            children: [
                ModelViewNode(
                    info: .init(title: "ZStack", subtitle: "Layered views", platforms: "All"),
                    viewBuilder: { AnyView(ZStackDemo()) },
                    children: []
                ),
                ModelViewNode(
                    info: .init(title: "VStack", subtitle: "Vertical stack", platforms: "All"),
                    viewBuilder: { AnyView(VStackDemo()) },
                    children: []
                )
            ]
        )
    ]
)
}
