import SwiftUI
import PlaygroundSupport
import UIKit
import CoreGraphics



struct IntroView: View {
    @State var introOpacity = 0.0
    @State var hasTimeElapsed = false
    
    var body: some View {
        
        ZStack{
            Rectangle().fill().foregroundColor(Color.init(red: 0.01, green: 0.01, blue: 0.1))
            VStack{
                    Text("A long time ago in a galaxy far, far away...")
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
                PlaygroundPage.current.setLiveView(Scene1View())
            }//onTapVstack
        }//ZStack
        .frame(width: 700, height: 400, alignment: .center)
    }//body
    
}//IntroView

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
                
                HStack(alignment: .center){
                        Image(uiImage: #imageLiteral(resourceName: "Ascion-Sad.png"))
                        .resizable().scaledToFit().frame(width: 200, height: 200)
                    
                    Image(uiImage: #imageLiteral(resourceName: "Aliens-Greys.png"))
                        .resizable().scaledToFit().frame(width: 300, height: 225)
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                    .blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("...There was Alien Ascion, belonging to the race of the Grays. But he was special: in fact, he was Blue, and for this reason he was not look kindly upon by others and even his own family tended to exclude him, mock him, make him feel different.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
    @State var shipScale: CGFloat = 0
    @State var shipXoffset: CGFloat = 0
    @State var shipYoffset: CGFloat = 100
    @State var planetScale: CGFloat = 1
    
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    var body: some View{
        ZStack{
            
            //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion runsaway.jpg") )
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
                
                HStack(alignment: .center){
                    
                    ZStack{
                        Image(uiImage: #imageLiteral(resourceName: "Planet-Grey.png"))
                            .resizable().scaledToFit().frame(width: 200, height: 200).scaleEffect(planetScale)
                        
                        Image(uiImage: #imageLiteral(resourceName: "Space-Ship.png"))
                            .resizable().scaledToFit().frame(width: 300, height: 225)
                            .scaleEffect(shipScale)
                            .offset(x: shipXoffset, y: shipYoffset)
                            .onAppear{
                                let planetScaleAnim = Animation.easeIn(duration: 8)
                                let scaleAnim = Animation.easeIn(duration: 5)
                                let offsetXAnim = Animation.easeOut(duration: 5)
                                let offsetYAnim = Animation.easeOut(duration: 5)
                                withAnimation(scaleAnim){
                                    shipScale = 1
                                }
                                withAnimation(offsetXAnim){
                                    shipXoffset = 325
                                }
                                withAnimation(offsetYAnim){
                                    shipYoffset = 0
                                }
                                withAnimation(planetScaleAnim){
                                    planetScale = 0.2
                                }
                            }
                    }
                        
                    
                    Image(uiImage: #imageLiteral(resourceName: "Space-Ship.png"))
                        .resizable().scaledToFit().frame(width: 300, height: 225).opacity(0)
                    
                }//HStack
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("One day, tired of being kidded by everyone, he thought “I don’t need them!” and decided to leave his planet to go as far as possible from those individuals who hurt him so much since he was little.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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
    @State var shipXOffset: CGFloat = -600
    
    @State var Planet1XOffset: CGFloat = 550
    @State var Planet2XOffset: CGFloat = 750
    @State var Planet3XOffset: CGFloat = 850
    
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    var body: some View{
        ZStack{
            //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion Space.jpg") )
                .resizable()
                .scaleEffect(bgMovingScale)
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 2)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    withAnimation(repeated) {
                            bgMovingScale = 1.5
                            }
                }
            
            VStack(alignment: .center){
                
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "Space-Ship.png"))
                        .resizable().scaledToFit().frame(width: 200, height: 200).offset(x: shipXOffset, y: 25)
                    
                    HStack(alignment: .center){
                            
                        Image(uiImage: #imageLiteral(resourceName: "Planet-1.png"))
                            .resizable().scaledToFit().frame(width: 100, height: 100).offset(x: Planet1XOffset, y: -75)
                        
                        Image(uiImage: #imageLiteral(resourceName: "Planet-2.png"))
                            .resizable().scaledToFit().frame(width: 100, height: 100).offset(x: Planet2XOffset, y: 125)
                        
                        Image(uiImage: #imageLiteral(resourceName: "Planet-3.png"))
                            .resizable().scaledToFit().frame(width: 100, height: 100).offset(x: Planet3XOffset, y: -75)
                    }//HStack
                }//Zstackimgs
                .onAppear{
                    let shipAnim = Animation.easeOut(duration: 6)
                    let planetsAnim = Animation.easeInOut(duration: 7)
                    withAnimation(shipAnim){
                        shipXOffset = 200
                    }
                    withAnimation(planetsAnim){
                        Planet1XOffset = -600
                        Planet2XOffset = -600
                        Planet3XOffset = -600
                    }
                }
                
                
                ZStack(alignment: .center){
                    //TextBg
                    Rectangle().foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5)).blur(radius: 10).frame(width: 625, height: 125)
                    
                    //StoryText
                    Text("Flying in space for days without any specific direction, he couldn’t find a Planet with forms of intelligent life.").foregroundColor(.white).font(.body).frame(width: 600, height: 100)
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


//: [Next Chapter] (@next)

