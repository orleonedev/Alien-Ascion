import SwiftUI
import PlaygroundSupport
import UIKit

struct IntroView: View {
    @State var introOpacity = 0.0
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
                        let fadein = Animation.easeIn(duration: 5)
                        withAnimation(fadein){
                            introOpacity = 1.0
                        }
                    }
                    .onDisappear{
                        let fadeOut = Animation.easeIn(duration: 5)
                        withAnimation(fadeOut){
                            introOpacity = 0.0
                        }
                    }
            }.onTapGesture {
                //Scene1()
            }
    }.frame(width: 600, height: 400, alignment: .center)
    }
}


//Struct Scene1: View {
//    var body: some View{
//        ZStack{
//            Rectangle().fill().foregroundColor(.blue)
//        }.frame(width: 600, height: 400, alignment: .center)
//    }
//}

let viewController = UIHostingController(rootView: IntroView())
PlaygroundPage.current.setLiveView(viewController)
