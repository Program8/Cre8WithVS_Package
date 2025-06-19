
import SwiftUI
struct SwiftUIView: View{
    var body: some View {
        ViewNode(node: DataSwiftUI().node)
    }
}

#Preview {
    NavigationView{
        SwiftUIView()
    }
}
