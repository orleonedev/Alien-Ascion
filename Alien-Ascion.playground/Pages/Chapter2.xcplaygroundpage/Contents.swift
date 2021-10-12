import SwiftUI
import PlaygroundSupport //per far funzionare le pagine di playground
import AVFoundation //audio e video

struct ContentView: View{ //dichiaro la scena con nome contentview
//dichiaro funzioni e variabili che verranno richiamate
    @State var introOpacity = 0.0
    var body: some View{
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "Bg Earth.jpg"))
            .resizable()
//            .scaledToFit()
            .frame(width:600, height: 400, alignment: .center)
            Image(uiImage: #imageLiteral (resourceName: "Planet-Earth.png"))
            .resizable()
            .scaledToFit()
            .frame(width:185, height:185)
            .position(x:325, y: 200)
            Text("Inserire testo").font(.body).foregroundColor(Color.white)
                .position(x:100, y: 350)
            
            
//            Image(uiImage: #imageLiteral(resourceName: "Ascion Farm.jpg"))
//                .resizable()
//                .frame(width: 300, height: 300)
//                //richiamo la funzione del suono
//            Spacer()
//            Image(uiImage: #imageLiteral(resourceName: "Space-Ship.png"))
//            .resizable()
//            .frame(width: 300, height: 300)
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


