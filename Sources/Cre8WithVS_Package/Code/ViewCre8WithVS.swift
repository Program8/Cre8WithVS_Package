
import SwiftUI
import Foundation
public struct ViewCre8WithVS: View {
    @StateObject private var dataModel = DataSwiftUI()
    public init () {
        
    }
    public var body: some View {
        VStack {
            if let rootNode = dataModel.rootNode {
                ViewNode(node: rootNode)
            } else {
                Text("Loading...")
                ProgressView()
            }
        }
        .task {
            if dataModel.rootNode == nil {
                await dataModel.loadDataAsync()
            }
        }
    }
}
#Preview {
    NavigationView{
        ViewCre8WithVS()
    }
}
