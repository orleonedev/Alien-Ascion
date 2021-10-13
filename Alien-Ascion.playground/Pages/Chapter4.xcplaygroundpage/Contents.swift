import SwiftUI
import PlaygroundSupport
import UIKit

struct ContentView1: View {
    @State var AscionSadOpacity = 0.0
    @State var dotNextScale :CGFloat = 1
    @State var introOpacity = 0.0
    @State var bgMovingScale: CGFloat = 1
    
    var body: some View {
        
        ZStack{
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .opacity(1)
                .scaleEffect(bgMovingScale)
//                .scaledToFill()
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 1.5)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 1.2
                                    }
                }
            
            Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                .position(x:400, y:125)
            .blur(radius: 10).frame(width: 900, height: 23)
            HStack{
                VStack{
                    Image(uiImage:#imageLiteral(resourceName: "Ascion-Sad.png"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .opacity(AscionSadOpacity)
                        .onAppear{
                            let fadein = Animation.easeIn(duration: 1)
                            withAnimation(fadein) {AscionSadOpacity = 1.0}
                        }
                    VStack{
                        Text("Ascion was sad as never before, he was afraid of being alone again...")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .opacity(introOpacity)
                            .onAppear{
                                let fadein = Animation.easeIn(duration: 3)
                                withAnimation(fadein){
                                    introOpacity = 1.0
                                }
                            }
                       
                        Circle().frame(width: 25, height: 25, alignment: .bottomTrailing)
                        .scaleEffect(dotNextScale)
                        .onAppear{
                         let baseAnimation = Animation.easeInOut(duration: 1)
                         let repeated = baseAnimation.repeatForever(autoreverses: true)
                         withAnimation(repeated) {dotNextScale = 0.5}
                        } //onAppear
                            .offset(x: 280, y: 20).foregroundColor(.white)
                        
                    } //VStack
                }
                
            }
        }.onTapGesture {
            PlaygroundPage.current.setLiveView(ContentView2())
        }
        .frame(width: 600, height: 400, alignment: .center)
    }
        
}




struct ContentView2: View {
    @State var bgMovingScale: CGFloat = 1
    @State var AscionSadOpacity = 0.0
    @State var BobOpacity = 0.0
    @State var dotNextScale :CGFloat = 1
    
    var body: some View {
        
        ZStack{
            Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                .position(x:400, y:162)
                .blur(radius: 10).frame(width: 900, height: 100);
            
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .opacity(0.5)
                .scaleEffect(bgMovingScale)
//                .scaledToFill()
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 20)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 2
                                    }
                }
            
            
            VStack{
                HStack{
    
                    VStack{
                        Image(uiImage:#imageLiteral(resourceName: "Ascion-Happy.png"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 220, height: 220)
                            .opacity(AscionSadOpacity)
                            .onAppear{
                                let fadein = Animation.easeIn(duration: 1)
                            withAnimation(fadein) {AscionSadOpacity = 1.0}
                            }
                }
                            
                            VStack{                            Image(uiImage:#imageLiteral(resourceName: "Bob.png"))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 220, height: 220)
                                .opacity(BobOpacity)
                                .onAppear{
                                    let fadein = Animation.easeIn(duration: 1)
                                    withAnimation(fadein) {BobOpacity = 1.0}
                                }
                            }
                }
            VStack{
                Text("Bob, however, manages to find the blue alien and calm him, telling that, actually, he has always known about his real nature: the farmer, in fact, found Ascion's spaceship, adding that he adores him for who he is, and Ascion's being different dind't change anything in their friendship.")
                    .foregroundColor(.white)
                    .font(.body)
                    .frame(width: 600, height: 100)
                 Circle().frame(width: 25, height: 25, alignment: .bottomTrailing)
                 .scaleEffect(dotNextScale)
                 .onAppear{
                  let baseAnimation = Animation.easeInOut(duration: 1)
                  let repeated = baseAnimation.repeatForever(autoreverses: true)
                  withAnimation(repeated) {dotNextScale = 0.5}
                 } //onAppear
                .offset(x: 280, y: -4).foregroundColor(.white)
            }
                        
        }
    } //ZStack
    .onTapGesture {
   PlaygroundPage.current.setLiveView(Scene8View())
    }.frame(width: 600, height: 400, alignment: .center)
    }
}
            
            
struct Scene8View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    
    @State var Scale1 :CGFloat = 0.4
    @State var Scale2 :CGFloat = 1.5
    
    var body: some View{
        ZStack{
            //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .opacity(0.5)
                .scaleEffect(bgMovingScale)
//                .scaledToFill()
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 20)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 2
                                    }
                }
            
            VStack(alignment: .center){
                
                HStack(alignment: .center){
                
                    //Mucca1
                Image(uiImage: #imageLiteral(resourceName: "Mucca.png"))
                    .resizable().scaledToFit().frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: -10))
    
                
                    .scaleEffect(Scale1)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale1 = 1.5
                            
                    
                        }
                        
                    }
                    
                    
                    //Mucca2
                Image(uiImage: #imageLiteral(resourceName: "Mucca.png"))
                    .resizable().scaledToFit().frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: -180))
                    .scaleEffect(Scale2)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale2 = 0.5
                        }
                        
                    }
                    
                    //Mucca3
                    Image(uiImage: #imageLiteral(resourceName: "Mucca.png"))
                        .resizable().scaledToFit().frame(width: 80, height: 80)
                        .rotationEffect(Angle(degrees: 280))
                        .scaleEffect(Scale1)
                        .onAppear{
                            let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                            let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                            withAnimation (repeated) {
                                Scale1 = 1
                            }
                            
                        }
                    
                    //Mucca4
                    Image(uiImage: #imageLiteral(resourceName: "Mucca.png"))
                        .resizable().scaledToFit().frame(width: 100, height: 100)
                        .rotationEffect(Angle(degrees: 10))
                        .scaleEffect(Scale2)
                        .onAppear{
                            let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                            let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                            withAnimation (repeated) {
                                Scale2 = 0.5
                            }
                            
                        }
                    
                }
                
                HStack(alignment: .center){
                    
                    Image(uiImage: #imageLiteral(resourceName: "pala.png"))
                    .resizable().scaledToFit().frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: 10))
                    .scaleEffect(Scale2)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale2 = 0.5
                        }
                        
                    }
                    
                    Image(uiImage: #imageLiteral(resourceName: "Forcone.png"))
                    .resizable().scaledToFit().frame(width: 85, height: 85)
                    .rotationEffect(Angle(degrees: -10))
                    .scaleEffect(Scale1)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale1 = 1
                        }
                        
                    }
                    
                        Image(uiImage: #imageLiteral(resourceName: "Ascion-Happy.png"))
                        .resizable().scaledToFit().frame(width: 100, height: 100)
                    
                    Image(uiImage: #imageLiteral(resourceName: "Fieno.png"))
                    .resizable().scaledToFit().frame(width: 60, height: 60)
                    .rotationEffect(Angle(degrees: 60))
                    .scaleEffect(Scale1)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale1 = 1
                        }
                        
                    }
                    
                    Image(uiImage: #imageLiteral(resourceName: "Fieno.png"))
                    .resizable().scaledToFit().frame(width: 70, height: 70)
                    .scaleEffect(Scale2)
                    .onAppear{
                        let MuccaAnimation1 = Animation.easeInOut(duration: 5)
                        let repeated = MuccaAnimation1.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale2 = 0.5
                        }
                        
                    }
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                        .position(x:400, y:30)
                    .blur(radius: 10).frame(width: 900, height: 60)
                    
                    //StoryText
                    Text("In the end, Ascion returns to the farm with Bob and stops transforming himself, helping his friend without hiding his real nature.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
                    //Dot Next
                    Circle().frame(width: 25, height: 25, alignment: .bottomTrailing)
                        .scaleEffect(dotNextScale)
                        .onAppear{
                            let baseAnimation = Animation.easeInOut(duration: 1)
                                            let repeated = baseAnimation.repeatForever(autoreverses: true)

                                            withAnimation(repeated) {
                                                dotNextScale = 0.5
                                            }
                        }//onAppear
                        .offset(x: 275, y: 50).foregroundColor(.white)
                    
                }//ZStack
                .onTapGesture {
                    PlaygroundPage.current.finishExecution()
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
    }
}



PlaygroundPage.current.setLiveView(ContentView1())

