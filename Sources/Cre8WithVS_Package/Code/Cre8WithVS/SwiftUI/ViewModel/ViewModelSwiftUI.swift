//
//  ViewModelSwiftUI.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/19/25.
//
import SwiftUI
class ViewModelSwiftUI: ViewModelNode{
    override nonisolated func createRootNode() -> ModelViewNode {
        return .init(title: "SwiftUI", subtitle: "SwiftUI subtitle", platforms: "platforms",viewBuilder: {AnyView(ZStackDemo()) }, children: makeChildNodes())
    }
    
    private nonisolated func makeChildNodes() -> [ModelViewNode] {
         return [
             ModelViewNode(
                 info: .init(title: "ZStack", subtitle: "Layered views", platforms: "All"),
                 viewBuilder: { AnyView(ZStackDemo())},
                 children: []
             )
//             ,
//             ModelViewNode(
//                 info: .init(title: "VStack", subtitle: "Vertical stack", platforms: "All"),
//                 viewBuilder: { AnyView(VStackDemo()) },
//                 children: []
//             )
         ]
     }
    
        func nodeView(for type: NodeType) -> some View {
            switch type {
            case .profile:
                ProfileView()
            case .settings:
                SettingsView()
            case .privacy:
                Text("🔒 Privacy Settings").font(.largeTitle)
            }
        }
    
}



