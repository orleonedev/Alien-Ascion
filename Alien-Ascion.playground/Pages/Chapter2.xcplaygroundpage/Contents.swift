import SwiftUI
import PlaygroundSupport //per far funzionare le pagine di playground
import AVFoundation //audio e video

struct ContentView: View{ //dichiaro la scena con nome contentview
//dichiaro funzioni e variabili che verranno richiamate
    var body: some View{
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "Earth.jpeg"))
                .resizable()
                .frame(width: 300, height: 300)
                .position(x: 300, y:150)
                //richiamo la funzione del suono
            Spacer()
            ZStack{
            Image(uiImage: #imageLiteral(resourceName:"Ascion Farm.jpeg"))
                .resizable()
                .frame(width: 300, height: 300)
                .position(x:300, y:450)
            }
        }.frame(width: 600, height: 400, alignment: .center)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
