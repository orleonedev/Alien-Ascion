import SwiftUI
import PlaygroundSupport
import UIKit

struct IntroView: View {
    @State var introOpacity = 0.0
    @State var hasTimeElapsed = false
    
    var body: some View {
        
        ZStack{
            Rectangle().fill().foregroundColor(Color.init(red: 0.01, green: 0.01, blue: 0.1))
            VStack{
                    Text("Episode III")
                        .font(.body)
                        .foregroundColor(.cyan)
                        .padding()
                        .opacity(introOpacity)
                        .onAppear{
                            let fadein = Animation.easeIn(duration: 3)
                            withAnimation(fadein){
                                introOpacity = 1.0
                            }
                        }
            }//VStack
            .onTapGesture {
                let fadeOut = Animation.easeIn(duration: 3)
                withAnimation(fadeOut){
                    introOpacity = 0.0
                }
                PlaygroundPage.current.setLiveView(Scene7View())
            }//onTapVstack
        }//ZStack
        .frame(width: 700, height: 400, alignment: .center)
    }//body
    
}//IntroView

struct Scene7View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    
    @State var H_AscionX : CGFloat = 50
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
                        Image(uiImage: #imageLiteral(resourceName: "Human-Ascion.png"))
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
                    Text("The day after, Ascion met Bob the farmer and started working for him.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene8View())
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
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
                    
                        Image(uiImage: #imageLiteral(resourceName: "Human-Ascion.png"))
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
                    Text("At work he used the Nebulizer and his telekinesis Powers. He started considering Bob a friend and Bob seemed to feel the same too.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene9View())
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
    }
}

struct Scene9View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 2
    
    @State var Scale1 :CGFloat = 1
    
    var body: some View{
        ZStack{
            //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .opacity(0.8)
                .scaleEffect(bgMovingScale)
//                .scaledToFill()
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 0.5)
                                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 1.5
                                    }
                }
            
            VStack(alignment: .center){
                
                
                HStack(alignment: .center){
                    
                    Image(uiImage: #imageLiteral(resourceName: "Gun-LowBattery.png"))
                    .resizable().scaledToFit().frame(width: 220, height: 220)
                    .scaleEffect(Scale1)
                    .onAppear{
                        let GunAnimation = Animation.easeInOut(duration: 0.5)
                        let repeated = GunAnimation.repeatForever(autoreverses: true)
                        withAnimation (repeated) {
                            Scale1 = 1.4
                        }
                        
                    }
                    
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("One day Ascion forgot to charge the Nebulizer but he went to work as usual.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
                    PlaygroundPage.current.setLiveView(Scene10View())
                }
            }//VStack
        }//Zstack
        .frame(width: 700, height: 400, alignment: .center)
    }
}

struct Scene10View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    
    @State var OpAlien: CGFloat = 1
    @State var OpHuman: CGFloat = 0
    
    var body: some View{
        ZStack{
            //BG
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
            
            VStack(alignment: .center){
                
                
                HStack(alignment: .center){
                    
                    ZStack(alignment: .center){
                        
                    Image(uiImage: #imageLiteral(resourceName: "Human-Ascion.png"))
                    .resizable().scaledToFit().frame(width: 200, height: 200)
                    .opacity(OpAlien)
                    .onAppear{
                        let OpacityAnimation = Animation.easeInOut(duration: 1)
                        withAnimation (OpacityAnimation) {
                            OpAlien = 0
                        }
                        
                    }
                        
                        
                    Image(uiImage: #imageLiteral(resourceName: "Ascion-Sad.png"))
                    .resizable().scaledToFit().frame(width: 200, height: 200)
                    .opacity(OpHuman)
                    .onAppear{
                        let OpacityAnimation = Animation.easeInOut(duration: 1)
                        withAnimation (OpacityAnimation) {
                            OpHuman = 1
                        }
                        
                    }
                    
                        
                    }
                    
                    ZStack(alignment: .center){
                        
                    Image(uiImage: #imageLiteral(resourceName: "Bob.png"))
                    .resizable().scaledToFit().frame(width: 200, height: 200)
                    .opacity(OpAlien)
                    .onAppear{
                        let OpacityAnimation = Animation.easeInOut(duration: 1)
                        withAnimation (OpacityAnimation) {
                            OpAlien = 0
                        }
                        
                    }
                        
                        
                    Image(uiImage: #imageLiteral(resourceName: "Bob-Surprised.png"))
                    .resizable().scaledToFit().frame(width: 200, height: 200)
                    .opacity(OpHuman)
                    .onAppear{
                        let OpacityAnimation = Animation.easeInOut(duration: 1)
                        withAnimation (OpacityAnimation) {
                            OpHuman = 1
                        }
                        
                    }
                    
                        
                    }

//                    Image(uiImage: #imageLiteral(resourceName: "Bob.png"))
//                    .resizable().scaledToFit().frame(width: 200, height: 200)
                    
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("Suddenly he was an Alien again and Bob saw him. Scared, Ascion ran away...").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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



PlaygroundPage.current.setLiveView(IntroView())


