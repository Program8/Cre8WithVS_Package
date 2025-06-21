//
//  NodeView.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import SwiftUI
struct ViewNode:View{
    var node: ModelViewNode
    var body: some View {
        ZStack{
            if !node.children.isEmpty {
                List{
                    ForEach(node.children) { item in
                        NavigationLink(destination: ViewNode(node: item)){
                            VStack(alignment: .leading, spacing: 4){
                                Text("\(item.title)").pkg_FontTitle()
                                Text("\(item.subtitle)").pkg_FontSubTitle().foregroundColor(.gray)
                            }
                        }
                    }
                }
            } else {
                node.viewBuilder()
                    
            }
        }.navigationTitle(node.title)
    }
}

final class NodeViewModel: ObservableObject, Identifiable {
    let id = UUID()
    let model: NodeModel
    @Published var children: [NodeViewModel] = []

    init(model: NodeModel) {
        self.model = model
        self.children = model.children.map { NodeViewModel(model: $0) }
    }

    @ViewBuilder
    func buildView() -> some View {
        switch model.type {
        case .profile:
            ProfileView(title: model.title, subtitle: model.subtitle)
        case .settings:
            SettingsView(title: model.title, subtitle: model.subtitle)
        case .privacy:
            PrivacyView(title: model.title, subtitle: model.subtitle)
        case .customView(let viewBuilder):
            viewBuilder(model)
        }
    }
}
