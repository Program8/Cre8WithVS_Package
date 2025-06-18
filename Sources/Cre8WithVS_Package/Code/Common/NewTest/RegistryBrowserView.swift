//
//  RegistryBrowserView.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import SwiftUI
struct RegistryBrowserView: View {
    @State private var search = ""

     var filtered: [ModelViewNode] {
        search.isEmpty ? [LayoutsModelViewNode.getNode()] : searchNodes(in: [LayoutsModelViewNode.getNode()], for: search)
    }

    var body: some View {
        NavigationView {
//            List {
//                ForEach(filtered) { node in
//                    Section(header: Text(node.info.title)) {
//                        ViewNode(node: node)
//                    }
//                }
//            }
            ViewNode(node: filtered.first!)
            .navigationTitle("Component Catalog")
            .searchable(text: $search)
        }
    }
}
#Preview {
    RegistryBrowserView()
}
