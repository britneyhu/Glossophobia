import SwiftUI

struct Breathe: View {
    @State private var instruction1 = "If you can, move to a quiet location and follow along."
    @State private var instruction2 = "Exhale all the air from your lungs through your mouth."
    @State private var instruction3 = "Inhale through your nose for 4 seconds."
    @State private var instruction4 = "Hold your breath for 7 seconds."
    @State private var instruction5 = "Exhale through your mouth for 8 seconds."
    @State private var instruction6 = "Repeat 4 times for best results."
    @State private var start = "Start"
    @State private var restart = "Restart"
    @State private var instruction1opacity = 1
    @State private var instruction2opacity = 0
    @State private var instruction3opacity = 0
    @State private var instruction4opacity = 0
    @State private var instruction5opacity = 0
    @State private var instruction6opacity = 0
    @State private var startopacity = 1
    @State private var timeropacity = 0
    @State private var restartopacity = 0
    @State private var time = 0
    @State private var instruction = 0
    @State private var timerOn = false
    @State private var shouldAnimate = false
    @State private var staticTime = 0.0
    
    let timer = Timer.publish(every:1, on: .main, in: .common).autoconnect()
    let blue = Color(#colorLiteral(red: 0.22745051980018616, green: 0.5294118523597717, blue: 0.9960786700248718, alpha: 1.0))
    
    var body: some View {
        let animation = Animation
            .linear(duration: Double(staticTime))
            .repeatForever(autoreverses: false)
        NavigationView{
            VStack{
                VStack{
                    Text("4-7-8 Breathing Technique")
                        .font(.system(size:30, weight: .bold))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                    Text(instruction1)
                        .font(.system(size:20))
                        .padding(.bottom, 40)
                        .opacity(Double(instruction1opacity))
                        .frame(width: 500, height: 30)
                        .overlay(
                            Text(instruction2)
                                .font(.system(size:20))
                                .padding(.bottom, 40)
                                .opacity(Double(instruction2opacity))
                                .frame(width: 500, height: 30)
                        )
                        .overlay(
                            Text(instruction3)
                                .font(.system(size:20))
                                .padding(.bottom, 40)
                                .opacity(Double(instruction3opacity))
                                .frame(width: 500, height: 30)
                        )
                        .overlay(
                            Text(instruction4)
                                .font(.system(size:20))
                                .padding(.bottom, 40)
                                .opacity(Double(instruction4opacity))
                                .frame(width: 500, height: 30)
                        )
                        .overlay(
                            Text(instruction5)
                                .font(.system(size:20))
                                .padding(.bottom, 40)
                                .opacity(Double(instruction5opacity))
                                .frame(width: 500, height: 30)
                        )
                        .overlay(
                            Text(instruction6)
                                .font(.system(size:20))
                                .padding(.bottom, 40)
                                .opacity(Double(instruction6opacity))
                                .frame(width: 500, height: 30)
                        )
                }
                .padding(.top, 20)
                .padding(.bottom, 40)
                ZStack{
                    Color.clear
                    ring(for : blue)
                        .frame(width:400)
                }
                .frame(width: 400, height: 400)
                .animation(animation, value: shouldAnimate)
                .overlay(
                    HStack{
                        Text(start)
                            .font(.system(size:40))
                        Image(systemName:"play.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                        .onTapGesture{
                            startopacity = 0
                            timeropacity = 1
                            time = 5
                            instruction1opacity = 0
                            instruction2opacity = 1
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                timerOn = true
                                staticTime = 5.8
                                shouldAnimate = true
                            }
                        }
                        .opacity(Double(startopacity))
                )
                .overlay(
                    Text("\(time)")
                        .font(.system(size:100))
                        .opacity(Double(timeropacity))
                )
                .overlay(
                    HStack{
                        Text(restart)
                            .font(.system(size:40))
                        Image(systemName:"gobackward")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                        .onTapGesture{
                            restartopacity = 0
                            timeropacity = 1
                            instruction6opacity = 0
                            instruction2opacity = 1
                            time = 8
                            timerOn = true
                            staticTime = 8.6
                            shouldAnimate = true
                        }
                        .opacity(Double(restartopacity))
                )
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink(destination: Human()
                        .navigationBarBackButtonHidden(true)){
                            Text("Done")
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width:40, height:40)
                                .padding(.trailing, 20)
                                .padding(.bottom, 10)}
                }
                
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
        .onReceive(timer) { _ in
            if timerOn{
                if time == 0{
                    staticTime = 0
                    shouldAnimate = false
                }
                if time > 0 { 
                    time -= 1
                }
                else{
                    instruction += 1
                    if instruction == 1{
                        time = 4
                        instruction2opacity = 0
                        instruction3opacity = 1
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                            timerOn = true
                            staticTime = 4.5
                            shouldAnimate = true
                        }
                    }
                    else if instruction == 2{
                        time = 7
                        instruction3opacity = 0
                        instruction4opacity = 1
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                            timerOn = true
                            staticTime = 7.5
                            shouldAnimate = true
                        }
                    }
                    else if instruction == 3{
                        time = 8
                        instruction4opacity = 0
                        instruction5opacity = 1
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                            timerOn = true
                            staticTime = 8.5
                            shouldAnimate = true
                        }
                    }
                    else if instruction == 4{
                        timerOn = false
                        timeropacity = 0
                        instruction5opacity = 0
                        instruction6opacity = 1
                        restartopacity = 1
                        instruction = 0
                    }
                }
            }
        }
    }
    func ring(for color: Color) -> some View{
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 25))
            .foregroundStyle(.tertiary)
            .overlay{
                Circle()
                    .trim(from: 0, to: shouldAnimate ? 1 : 0)
                    .stroke(color.gradient,
                            style: StrokeStyle(lineWidth: 25, lineCap: .round))
            }
            .rotationEffect(.degrees(-90))
    }
}
