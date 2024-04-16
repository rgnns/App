import SwiftUI

import ParentOne
import ParentTwo

public struct ContentView: View {
    public init() {
        let adam = ParentOne.shared
        let eve = ParentTwo.shared
        print("First parent is \(adam.firstName())")
        print("His children are:")
        for child in adam.children() {
            print("  \(child)")
        }
        print("Second parent is \(eve.firstName())")
        print("Her children are:")
        for child in eve.children() {
            print("  \(child)")
        }
    }

    public var body: some View {
        Text("Hello, World!")
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
