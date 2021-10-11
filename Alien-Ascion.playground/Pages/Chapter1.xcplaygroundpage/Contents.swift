import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
            
            VStack(alignment: .center){
                Text("Once upon a time in a far far galaxy...")
                    .foregroundColor(.white)
                    .font(.body)
            }
            
        }.background(Color.black)
        .frame(width: 600, height: 400)
    }
    
}

PlaygroundPage.current.setLiveView(ContentView())

