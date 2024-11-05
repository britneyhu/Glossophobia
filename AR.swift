import RealityKit
import SwiftUI

struct AR : View {
    @State private var timerOn = false
    @State private var minutes = 0
    @State private var seconds = 0
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    let timer = Timer.publish(every:1, on: .main, in: .common).autoconnect()
    var body: some View {
        let speakingRate = speechRecognizer.speakingRateContainer
        let averagePause = speechRecognizer.averagePauseContainer
        NavigationView{
            VStack{
                VStack{
                    return ARViewContainer()
                }
                HStack{
                    HStack(spacing: 0){
                        Text("⏱️")
                            .padding(.leading, 20)
                        Text(String(format: "%02d", minutes))
                        Text(":")
                        Text(String(format: "%02d", seconds))
                    }
                    .padding(.bottom, 5)
                    Spacer()
//                    Text("Drag and pinch to move, resize, and rotate audience members")
                    HStack{
                        Text("Speaking Rate: ")
                        Text(speakingRate)
                            .foregroundColor(.blue)
                        Text("wpm")
                            .padding(.trailing, 10)
                        Text("|")
                        Text("Pause between words: ")
                        Text(averagePause)
                            .foregroundColor(.blue)
                        Text("seconds")
                    }
                    .font(.system(size:15))
                    Spacer()
                    HStack(spacing: 10){
                        Button{
                            timerOn = true
                            if !isRecording{
                                speechRecognizer.transcribe()
                            }
                            else{
                                speechRecognizer.stopTranscribing()
                            }
                            isRecording = true
                        }
                    label:{
                        Image(systemName:"play.fill").resizable().frame(width:10, height:10).foregroundColor(.green)
                        Text("Start")
                    }
                        Button{
                            timerOn = false
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                if !isRecording{
                                    speechRecognizer.transcribe()
                                }
                                else{
                                    speechRecognizer.stopTranscribing()
                                }
                                isRecording = false
                            }
                        }
                    label:{
                        Image(systemName:"checkmark.circle.fill").resizable().frame(width:15, height:15).foregroundColor(.blue)
                        Text("Done")
                    }
                        NavigationLink(destination: End().navigationBarBackButtonHidden(true)){ 
                            Text("Exit")
                            Image(systemName:"figure.walk.departure").resizable().frame(width:15, height:15).foregroundColor(.red)
                        }
                        .padding(.trailing, 20)
                    }
                }
                .frame(maxWidth:.infinity, maxHeight:30)
                .background(Color.black)
                .foregroundColor(.white)
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color.black)
        }
        .navigationViewStyle(.stack)
        .onReceive(timer) { _ in
            if timerOn{
                if seconds < 59{
                    seconds += 1
                }
                else{
                    minutes += 1
                    seconds = 0
                }
            }
            else{
                seconds = 0
                minutes = 0
            }
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        let anchor = AnchorEntity(plane: .horizontal)
        arView.scene.addAnchor(anchor)
        
        let person1 = try! Entity.loadModel(named: "Person1") 
        let person1position = SIMD3<Float>(1.2, -0.8, -2)
        person1.position = person1position
        person1.orientation = simd_quatf(angle: 270, axis: [0, 1, 0])
        person1.transform.scale = SIMD3<Float>(0.016,0.016,0.016)
        person1.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: person1)
        let person1Animations = person1.availableAnimations.first!
        person1.playAnimation(person1Animations.repeat())
        anchor.addChild(person1)
        
        let person2 = try! Entity.loadModel(named: "Person2")
        let person2position = SIMD3<Float>(0.3, -0.8, -2)
        person2.position = person2position
        person2.orientation = simd_quatf(angle: 270, axis: [0, 1, 0])
        person2.transform.scale = SIMD3<Float>(0.016,0.016,0.016)
        person2.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: person2)
        let person2Animations = person2.availableAnimations.first!
        person2.playAnimation(person2Animations.repeat())
        anchor.addChild(person2)
        
        let person3 = try! Entity.loadModel(named: "Person3")
        let person3position = SIMD3<Float>(-0.6, -0.8, -2)
        person3.position = person3position
        person3.orientation = simd_quatf(angle: 270, axis: [0, 1, 0])
        person3.transform.scale = SIMD3<Float>(0.016,0.016,0.016)
        person3.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: person3)
        let person3Animations = person3.availableAnimations.first!
        person3.playAnimation(person3Animations.repeat())
        anchor.addChild(person3)
        
        let person4 = try! Entity.loadModel(named: "Person4")
        let person4position = SIMD3<Float>(-1.5, -0.8, -2)
        person4.position = person4position
        person4.orientation = simd_quatf(angle: 270, axis: [0, 1, 0])
        person4.transform.scale = SIMD3<Float>(0.016,0.016,0.016)
        person4.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: person4)
        let person4Animations = person4.availableAnimations.first!
        person4.playAnimation(person4Animations.repeat())
        anchor.addChild(person4)
        
        let person5 = try! Entity.loadModel(named: "Person5")
        let person5position = SIMD3<Float>(-2.4, -0.8, -2)
        person5.position = person5position
        person5.orientation = simd_quatf(angle: 270, axis: [0, 1, 0])
        person5.transform.scale = SIMD3<Float>(0.016,0.016,0.016)
        person5.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: person2)
        let person5Animations = person5.availableAnimations.first!
        person5.playAnimation(person5Animations.repeat())
        anchor.addChild(person5)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
