import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
                VStack {
                    Text("Hello Playground!")
                }
                .frame(width: 400, height: 600)
    }
}

PlaygroundPage.current.setLiveView(ContentView())

