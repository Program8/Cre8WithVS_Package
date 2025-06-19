//
//  DataSwiftUI.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/19/25.
//
import SwiftUI
@MainActor
class DataSwiftUI{
     var node: ModelViewNode!
     init() {
         node = ModelViewNode(info: .init(title: "SwiftUI", subtitle: "SwiftUI subtitle", platforms: "platforms"), viewBuilder: {AnyView(EmptyView())}, children: [
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
            
         ])
    }
}
