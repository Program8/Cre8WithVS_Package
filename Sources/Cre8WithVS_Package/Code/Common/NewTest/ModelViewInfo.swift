//
//  ViewInfo.swift
//  Cre8WithVS_Package
//
//  Created by Vijay Sachan on 6/18/25.
//
import Foundation
struct ModelViewInfo:Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let platforms: String
//    let sectionHeader:String
//    let sectionFooter:String
}
// MARK: - Section Type Enum
enum SectionType: String, CaseIterable, Identifiable {
    case views = "Views"
    case layouts = "Layouts"
    case none   =   "None"
    var name: String { rawValue }
    var id: String { rawValue }
}
