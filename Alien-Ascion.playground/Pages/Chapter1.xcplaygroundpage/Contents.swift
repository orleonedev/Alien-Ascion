import SwiftUI
import PlaygroundSupport

struct ContentView: View {
   @State var showIntro = false
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Rectangle().foregroundColor(Color.black)
            
            VStack(alignment: .leading){
                
                if showIntro {
                    
                    Text("Once upon a time in a far far away galaxy...")
                        .foregroundColor(.white)
                }
            
            } //.onAppear(perform: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
            
            
        }.frame(width: 400, height: 600)
        
    }
    
}

PlaygroundPage.current.setLiveView(ContentView())

