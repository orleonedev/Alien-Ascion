//@State var introState = false
//@State var dissolve = false
//@State var scene1 = false
//@State var scene2 = false
//
//ZStack{
//    // Background
//    Rectangle().fill().foregroundColor(Color.init(red: 0.05, green: 0.05, blue: 0.1))
//    //Testo Iniziale
//    if introState{
//        VStack(alignment: .center){
//            Text("Once upon a time in a far far galaxy...")
//                .font(.body)
//                .foregroundColor(.cyan)
//                .padding()
//                .animation(.easeIn, value: dissolve)
////                        .onAppear(){
////                            withAnimation(Animation.easeInOut(duration: 0.6)){
////                                dissolve.toggle()
////                            }
////                        }.opacity(dissolve ? 1 : 0)
//                .onTapGesture{
//                    print("Introstate change from -> \(introState)")
//                    introState=false
//                    print("to ->\(introState)")
//                    scene1=true
//                }
//                }
//        }
//    /*
//    //Scena 1
//    if scene1{
//        //gestore layer
//        ZStack{
//            //Livello immagini
//            //TODO
//            //Overlay testo
//            VStack(alignment: .center){
//                //per mantenere in basso il testo
//                Spacer()
//                //Layer back-testo
//                ZStack{
//                    //background
//                    Rectangle().frame(width: 600, height: 100, alignment: .center).foregroundColor(Color.init( red: 1.0, green: 1.0, blue: 1.0, opacity: 0.08)).padding().blur(radius: 10)
//                // Testo
//                    Text("There was Alien Ascion, belonging to the race of the Grays. But he was special: in fact, he was Blue, and for this reason he was not look kindly upon by others and even his own family tended to exclude him, mock him, make him feel different.")
//                        .padding(20)
//                        .foregroundColor(.white.opacity(0.9))
//                        .font(.body)
//                }
//            }
//        }
////            }*/
//}
//.frame(width: 600, height: 400)
//.onAppear {
//        print("Introstate change from -> \(introState)")
//        introState=true
//        print("to ->\(introState)")
//    }
//}
