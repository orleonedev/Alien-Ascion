
                   
            
//In the end, Ascion returned to the farm with Bob and stops transforming himself, helping his friend without hiding his real nature. Now he is finally happy.
     
     
              
import SwiftUI
import PlaygroundSupport
import UIKit
import CoreGraphics


struct Scene1View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    var body: some View{
        
        ZStack{
          //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .scaleEffect(bgMovingScale)
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 5)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    withAnimation(repeated) {
                        bgMovingScale = 1.2
                    }
                }
            
            VStack(alignment: .center){
                
                        Image(uiImage: #imageLiteral(resourceName: "Ascion-Sad.png"))
                        .resizable().scaledToFit().frame(width: 200, height: 200)
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                    .blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text(".Ascion was sad as never before, he was afraid of being alone again. He couldn't see any light, any moment of joy for him...").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene2View())
                }
            }//VStack
            
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
        
    }
}

struct Scene2View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    
    @State var H_AscionX : CGFloat = 230
    @State var H_AscionY : CGFloat = 150
    
    @State var BobX : CGFloat = 300
    @State var BobY : CGFloat = 150
    
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
                        Image(uiImage: #imageLiteral(resourceName: "Ascion-Happy.png"))
                        .resizable().scaledToFit().frame(width: 220, height: 220)
                        .position(x: H_AscionX, y: H_AscionY)
                        .onAppear{
                            let H_AscionMove=Animation.easeIn(duration: 1)
                            withAnimation(H_AscionMove){
                                H_AscionX = 250
                                H_AscionY = 150
                            }
                        }
                    
                    Image(uiImage: #imageLiteral(resourceName: "Bob.png"))
                        .resizable().scaledToFit().frame(width: 220, height: 220)
                        .position(x: BobX, y: BobY)
                        .onAppear{
                            let H_AscionMove=Animation.easeIn(duration: 1)
                            withAnimation(H_AscionMove){
                                BobX = 100
                                BobY = 150
                            }
                        }
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("...But Bob, however, managed to find the blue alien and calm him. He told him that that Ascion's being different dind't change anything in their friendship.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene3View())
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
    }
}

struct Scene3View:View{
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
                    let baseAnimation = Animation.easeInOut(duration: 5)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 1.2
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
                    
                    Image(uiImage: #imageLiteral(resourceName: "Bob.png"))
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
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("In the end, Ascion returned to the farm with Bob and stops transforming himself, helping his friend without hiding his real nature. Now he is finally happy...And  not alone anymore!").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene1View())
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
    }
}


PlaygroundPage.current.setLiveView(Scene1View())


//: [Next Chapter] (@next)


