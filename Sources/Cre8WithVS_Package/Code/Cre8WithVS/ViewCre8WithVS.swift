
import SwiftUI
import Foundation
public struct ViewCre8WithVS: View {
    @StateObject private var viewModel=ViewModelSwiftUI()
    public init(){
        
    }
    public var body: some View {
        VStack {
            if let rootNode = viewModel.rootNode {
                ViewNode(node: rootNode)
            } else {
                Text("Loading...")
                ProgressView()
            }
        }
        .task {
            if viewModel.rootNode == nil {
                await viewModel.loadDataAsync()
            }
        }
    }
}
//#Preview {
//    NavigationView{
//        ViewCre8WithVS()
//    }
//}
//public struct ViewCre8WithVS: View {
//    
//    public init(){
//        
//    }
//    public var body: some View {
//        List(1...10, id: \.self) { item in
//                        NavigationLink("Item \(item)", destination: ZStackDemo())
//        }.navigationTitle("Swigfg")
//       
////        NavigationLink("Go to Detail", destination: ZStackDemo())
//        
//    }
//}
#Preview {
    NavigationView{
        ViewCre8WithVS()
    }
}
