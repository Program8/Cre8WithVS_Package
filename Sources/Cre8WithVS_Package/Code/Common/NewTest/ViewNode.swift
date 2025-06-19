//
//  NodeView.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import SwiftUI
struct ViewNode: View{
    let node: ModelViewNode
    var body: some View {
        ZStack{
            if !node.children.isEmpty {
                List{
                    ForEach(node.children) { item in
                        NavigationLink(destination: ViewNode(node: item)){
                            VStack(alignment: .leading, spacing: 4){
                                Text("\(item.info.title)").pkg_FontTitle()
                                Text("\(item.info.subtitle)").pkg_FontSubTitle().foregroundColor(.gray)
                            }
                        }
                    }
                }
                
            } else {
                node.viewBuilder()
                    
            }
        }.navigationTitle(node.info.title)
    }
}
