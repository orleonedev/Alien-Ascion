import SwiftUI
import PlaygroundSupport
import UIKit

struct IntroView: View {
    @State var showText = true
    @State var scene1isOn = false
    @State var scene2isOn = false
    @State var scene3isOn = false
    @State var introOpacity = 0.0
    
    var body: some View {
        ZStack{
            Rectangle().fill().foregroundColor(Color.init(red: 0.01, green: 0.01, blue: 0.1))
            if showText{
            VStack{
                
                    Text("A long time ago in a galaxy far, far away...")
                        .font(.body)
                        .foregroundColor(.cyan)
                        .padding()
                        .opacity(introOpacity)
                        .onAppear{
                            let fadein = Animation.easeIn(duration: 5)
                            withAnimation(fadein){
                                introOpacity = 1.0
                            }
                        }
                
                
            }.onTapGesture {
                let fadeOut = Animation.easeIn(duration: 5)
                withAnimation(fadeOut){
                    introOpacity = 0.0
                }
                showText = false
                scene1isOn = true
            }
        }
            if scene1isOn {
                ZStack{
                    Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                        .resizable()
                        .scaledToFill()
                    
                    HStack{
                        Image(uiImage: #imageLiteral(resourceName: "Ascion-Sad.png"))
                            .resizable().scaledToFit()
                            .frame(width: 300, height: 300)
                            
                        
                        Image(uiImage: #imageLiteral(resourceName: "Aliens-Greys.png"))
                            .resizable().scaledToFit().frame(width: 300, height: 200)
                            
                        
                    }//HStack
                    VStack{
                        Spacer()
                        Text("maremma maiala")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                    }//Vstack
                }//Zstack ps:. provare col fade in anche qui?
                
            }
            
            
    }.frame(width: 600, height: 400, alignment: .center)
    }
}

PlaygroundPage.current.setLiveView(IntroView())
