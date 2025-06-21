//
//  GlobalContants.swift
//  Cre8WithVS_Package
//
//  Created by VS Comp on 21/06/25.
//
import SwiftUI

@MainActor
func makeView(_ view:some View)async -> ()->AnyView{
    return {
        return AnyView(ViewContainer(content: view))
    }
}
