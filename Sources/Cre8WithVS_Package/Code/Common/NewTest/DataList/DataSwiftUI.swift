//
//  DataSwiftUI.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/19/25.
//
import SwiftUI
@MainActor
final class DataSwiftUI: ObservableObject{
    init(){
        print("DataSwiftUI")
    }
    @Published var rootNode: ModelViewNode?
    func loadDataAsync() async {
        let node=await Task.detached(priority: .userInitiated){
            return await self.createRootNode()
        }.value
        self.rootNode = node
        
    }
    
    private  func createRootNode() async  -> ModelViewNode {
        try? await Task.sleep(nanoseconds: 10_000_000_000)
        return ModelViewNode(
            info: .init(title: "SwiftUI", subtitle: "SwiftUI subtitle", platforms: "platforms"),
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
    }
}

