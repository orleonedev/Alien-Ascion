import SwiftUI
import PlaygroundSupport //per far funzionare le pagine di playground
import AVFoundation //audio e video

struct ContentView: View{ //dichiaro la scena con nome contentview
//dichiaro funzioni e variabili che verranno richiamate
    @State var introOpacity = 0.0
    @State var introSize = 0.0
    var body: some View{
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "Bg Earth.jpg"))
            .resizable()
//            .scaledToFit()
            .frame(width:600, height: 400, alignment: .center)
            Image(uiImage: #imageLiteral (resourceName: "Planet-Earth.png"))
            .resizable()
            .scaledToFit()
            .frame(width: introSize, height: introSize)
            .position(x:330, y: 200)
            .onAppear{
                let earthGrow = Animation.easeIn(duration: 3)
                
                withAnimation(earthGrow){
                    introSize = 230.0
                }
            }
            Text("Inserire testo").font(.body).foregroundColor(Color.white)
                .position(x:100, y: 350)
            .opacity(introOpacity)
            .onAppear{
                let fadein = Animation.easeIn(duration: 3)
                
                withAnimation(fadein){
                    introOpacity = 1.0
                }
            }
            
            
            
            
        }.frame(width: 600, height: 400, alignment: .center)
            .background(.black)
    }
}

PlaygroundPage.current.setLiveView(ContentView())


