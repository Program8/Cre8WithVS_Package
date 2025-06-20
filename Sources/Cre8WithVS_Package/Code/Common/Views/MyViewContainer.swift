//
//  MyViewContainer.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/20/25.
//
import SwiftUI
struct MyViewContainer<Content: View>: View{
    let content: Content
    var body: some View{
        content
    }
}
