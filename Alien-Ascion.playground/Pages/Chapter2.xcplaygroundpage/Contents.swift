import SwiftUI
import PlaygroundSupport //per far funzionare le pagine di playground
import AVFoundation //audio e video

struct Scene1View: View{ //dichiaro la scena con nome contentview
//dichiaro funzioni e variabili che verranno richiamate
    @State var introSize = 0.0
    @State var dotNextScale :CGFloat = 1
    var body: some View{
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "Bg Earth.jpg"))
                .resizable()
                .frame(width:700, height: 400, alignment: .center)
            Image(uiImage: #imageLiteral (resourceName: "Planet-Earth.png"))
                .resizable()
                .scaledToFit()
                .frame(width: introSize, height: introSize)
                .position(x:380, y: 180)
                .onAppear{
                    let earthGrow = Animation.easeIn(duration: 3)
                
                    withAnimation(earthGrow){
                        introSize = 200.0
                    }
                }
            ZStack{
                Rectangle()
                    .foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                    .blur(radius: 10)
                    .frame(width: 625, height: 90)
                    .position(x:350, y:325)
                Text("He was losing hope when… He finally spots a planet that seems to have his same skin color: the Earth!")
                    .foregroundColor(.white)
                    .font(.body)
                    .frame(width: 600, height: 100)
                    .position(x:350, y: 325)
                Circle().frame(width: 25, height: 25)
                    .scaleEffect(dotNextScale)
                    .onAppear{
                        let baseAnimation = Animation.easeInOut(duration: 1)
                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            dotNextScale = 0.5
                                        }
                    }//onAppear
                    .position(x: 625, y: 350)
                    .foregroundColor(.white)
            }
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Scene2View())
            }
        }.frame(width: 700, height: 400, alignment: .center)
            .background(.black)
    }
}
struct Scene2View:View{
    @State var dotNextScale :CGFloat = 1
    @State var introX : CGFloat = -300
    @State var introY : CGFloat = 80
    var body: some View{
        ZStack{
            Image(uiImage: #imageLiteral(resourceName: "Bg Ascion Farm.jpg"))
                .resizable()
                .frame(width:700, height: 400, alignment: .center)
            Image(uiImage: #imageLiteral (resourceName: "Space-Ship.png"))
                .resizable()
                .position(x:introX, y: introY)
//                .position(x:-85, y: 140)
                .scaledToFit()
                .onAppear{
                    let shipMove=Animation.easeInOut(duration: 3)
                    withAnimation(shipMove){
                        introX = -85
                        introY = 140
                    }
                }
                .rotationEffect(Angle(degrees: 50))
                .frame(width: 200)
                
            ZStack{
                Rectangle()
                    .foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                    .blur(radius: 10)
                    .frame(width: 625, height: 90)
                    .position(x:350, y:325)
                Text("Then, he decides to dock right on it, landing near a farm in the middle of the night, to avoid of being seen, and hides the spaceship in the brushwood.")
                    .foregroundColor(.white)
                    .font(.body)
                    .frame(width: 600, height: 100)
                    .position(x:350, y: 325)
                Circle().frame(width: 25, height: 25)
                    .scaleEffect(dotNextScale)
                    .onAppear{
                        let baseAnimation = Animation.easeInOut(duration: 1)
                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            dotNextScale = 0.5
                                        }
                    }//onAppear
                    .position(x: 625, y: 350)
                    .foregroundColor(.white)
            }
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Scene3View())
            }
        }
    }
}
struct Scene3View:View{
    @State var dotNextScale :CGFloat = 1
    @State var bgMovingScale: CGFloat = 1
    @State var OpAlien: CGFloat = 1
    @State var OpHuman: CGFloat = 0
    var body: some View{
        ZStack{
            //BG
            Image(uiImage:#imageLiteral(resourceName: "Bg Ascion wAliens.jpg") )
                .resizable()
                .opacity(0.5)
                .scaleEffect(bgMovingScale)
                .onAppear{
                    let baseAnimation = Animation.easeInOut(duration: 20)
                                let repeated = baseAnimation.repeatForever(autoreverses: true)

                                    withAnimation(repeated) {
                                        bgMovingScale = 2
                                    }
                }
                .frame(width: 700, height: 400, alignment: .center)
            Image(uiImage:#imageLiteral(resourceName: "Human-Ascion.png") )
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .position(x:370, y:170)
                .opacity(OpHuman)
                .onAppear{
                                        let OpacityAnimation = Animation.easeInOut(duration: 3)
                                        withAnimation (OpacityAnimation) {
                                            OpHuman = 1
                                        }
                                        
                                    }
            
            Image(uiImage:#imageLiteral(resourceName: "Ascion-Happy.png") )
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .position(x:370, y:170)
                .opacity(OpAlien)
                .onAppear{
                            let OpacityAnimation = Animation.easeInOut(duration: 1)
                                    withAnimation (OpacityAnimation) {
                                        OpAlien = 0
                                        }
                                        
                                    }
            Image(uiImage:#imageLiteral(resourceName: "Gun.png") )
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .position(x:175, y:190)
                .opacity(OpAlien)
                .onAppear{
                            let OpacityAnimation = Animation.easeInOut(duration: 5)
                                    withAnimation (OpacityAnimation) {
                                        OpAlien = 0
                                        }
                                        
                                    }
            ZStack{
                Rectangle()
                    .foregroundColor(.init(red: 0.05, green: 0.05, blue: 0.5).opacity(0.5))
                    .blur(radius: 10)
                    .frame(width: 625, height: 90)
                    .position(x:350, y:325)
                Text("While he was getting off the spaceship, Ascion notices a strange object on the dashboard, the Nebulizer, a gun with extraordinary powers that previously belonged to his dad: so he use it to take the form of a human being and to hide his true appearance from others, for fear of being excluded once again.")
                    .foregroundColor(.white)
                    .font(.body)
                    .frame(width: 600, height: 100)
                    .position(x:350, y: 325)
                Circle().frame(width: 25, height: 25)
                    .scaleEffect(dotNextScale)
                    .onAppear{
                        let baseAnimation = Animation.easeInOut(duration: 1)
                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            dotNextScale = 0.5
                                        }
                    }//onAppear
                    .position(x: 625, y: 360)
                    .foregroundColor(.white)
            }
        }
    }
}
PlaygroundPage.current.setLiveView(Scene1View())
