import SwiftUI

struct Reframing: View {
    @State private var thought1 = "I'm going to fail."
    @State private var thought2 = "Everyone will laugh at me."
    @State private var thought3 = "I'm going to blank out"
    @State private var rationality1 = "Is this reasonable or helpful to assume?"
    @State private var rationality2 = "Is there evidence that this will happen?"
    @State private var rationality3 = "What's something I can do to control this outcome?"
    @State private var changed1 = "I'm going to succeed."
    @State private var changed2 = "People will be understanding even if I slip up."
    @State private var changed3 = "I can practice so I don't forget what to say."
    @State private var droppedText = "Drag negative thoughts here"
    @State private var thought1opacity = 1
    @State private var thought2opacity = 1
    @State private var thought3opacity = 1
    @State private var rationality1opacity = 0
    @State private var rationality2opacity = 0
    @State private var rationality3opacity = 0
    @State private var changed1opacity = 0
    @State private var changed2opacity = 0
    @State private var changed3opacity = 0  
    @State private var buttontext = "Change"
    @State private var rationalitydisplayopacity = 0
    @State private var brainopacity = 0
    @State private var happyOpacity = 0
    @State private var sadOpacity = 1
    @State private var redBubbleOpacity = 1

    
    var body: some View {
        NavigationView{
            VStack{
                Text("How Reframing Works: Catch, Check, Change")
                    .font(.system(size:30, weight: .bold))
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
                HStack(spacing:140){
                    VStack{
                        Text("Catch")
                            .font(.system(size: 20, weight:.bold))
                        Text("when you're thinking of worst case scenarios or focusing on the negative.")
                            .multilineTextAlignment(.center)
                    }.frame(maxWidth:200)
                    VStack{
                        Text("Check")
                            .font(.system(size: 20, weight:.bold))
                        Text("if there are other outcomes and explainations, don't immediately assume the thought is true.")
                            .multilineTextAlignment(.center)
                    }.frame(maxWidth:200)
                    VStack{
                        Text("Change")
                            .font(.system(size: 20, weight:.bold))
                        Text("the thought to a neutral or positive one")
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth:200)
                }
                HStack(spacing:140){
                    VStack{
                        Text(thought1
                        )
                        .font(.system(size:30))
                        .padding()
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .fill(Color.red)
                            .cornerRadius(10))
                        .opacity(Double(thought1opacity))
                        .frame(maxWidth:200, maxHeight:105)
                        .onDrag({
                                NSItemProvider(object: NSString(string: thought1))
                        })
                        Text(thought2
                        )
                        .font(.system(size:30))
                        .padding()
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .fill(Color.red)
                            .cornerRadius(10))
                        .opacity(Double(thought2opacity))
                        .frame(maxWidth:200, maxHeight:105)
                        .onDrag({
                            NSItemProvider(object: NSString(string: thought2))
                        })
                        Text(thought3
                        )
                        .font(.system(size:30))
                        .padding()
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .fill(Color.red)
                            .cornerRadius(10))
                        .opacity(Double(thought3opacity))
                        .frame(maxWidth:200, maxHeight:105)
                        .onDrag({
                            NSItemProvider(object: NSString(string: thought3))
                        })
                    }
                    .frame(maxWidth:200)
                    VStack{
                        Image(systemName: "bubble.left.fill")
                            .resizable()
                            .frame(width:200, height:150)
                            .foregroundColor(Color.blue)
                            .opacity(Double(rationalitydisplayopacity))
                            .overlay(
                                Text("🧠")
                                    .font(.system(size:50))
                                    .position(x:20, y:130)
                                    .opacity(Double(brainopacity))
                            )
                            .overlay(
                                Text(rationality1)
                                    .font(.system(size:20))  
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .opacity(Double(rationality1opacity))
                                    .frame(maxWidth:200, maxHeight:145)
                            )
                            .overlay(
                                Text(rationality2)
                                    .font(.system(size:20))
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .opacity(Double(rationality2opacity))
                                    .frame(maxWidth:200, maxHeight:220)
                            )
                            .overlay(
                                Text(rationality3)
                                    .font(.system(size:20))
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .opacity(Double(rationality3opacity))
                                    .frame(maxWidth:200, maxHeight:200)
                            )
                        Image(systemName: "bubble.right.fill")
                            .resizable()
                            .opacity(Double(redBubbleOpacity))
                            .frame(width:200, height:150)
                            .foregroundColor(Color.red)
                            .overlay(
                                Text("😓")
                                    .opacity(Double(sadOpacity))
                                    .font(.system(size:50))
                                    .position(x:180, y:130)
                            )
                            .overlay(
                                Text("😄")
                                    .font(.system(size:50))
                                    .opacity(Double(happyOpacity))
                            )
                            .overlay(
                                Text(droppedText)
                                    .foregroundColor(.black)
                            )
                            .onDrop(of: ["public.text"], delegate: DropViewDelegate(droppedText: $droppedText, thought1: $thought1, thought2: $thought2, thought3: $thought3,  rationalitydisplayopacity: $rationalitydisplayopacity, rationality1opacity: $rationality1opacity, rationality2opacity: $rationality2opacity, rationality3opacity: $rationality3opacity, brainopacity: $brainopacity))
                            .overlay(
                                Text(droppedText)
                            )
                        Button{
                            if droppedText == thought1{
                                thought1opacity = 0
                                rationalitydisplayopacity = 0
                                rationality1opacity = 0
                                brainopacity = 0
                                changed1opacity = 1
                                droppedText = ""
                                if thought1opacity == 0 && thought2opacity == 0 && thought3opacity == 0{
                                    redBubbleOpacity = 0
                                    sadOpacity = 0
                                    happyOpacity = 1
                                    buttontext = ""
                                }
                            }
                            else if droppedText == thought2{
                                thought2opacity = 0
                                rationalitydisplayopacity = 0
                                rationality2opacity = 0
                                brainopacity = 0
                                changed2opacity = 1
                                droppedText = ""
                                if thought1opacity == 0 && thought2opacity == 0 && thought3opacity == 0{
                                    redBubbleOpacity = 0
                                    sadOpacity = 0
                                    happyOpacity = 1
                                    buttontext = ""
                                }
                            }
                            else if droppedText == thought3{
                                thought3opacity = 0
                                rationalitydisplayopacity = 0
                                rationality3opacity = 0
                                brainopacity = 0
                                changed3opacity = 1
                                droppedText = ""
                                if thought1opacity == 0 && thought2opacity == 0 && thought3opacity == 0{
                                    redBubbleOpacity = 0
                                    sadOpacity = 0
                                    happyOpacity = 1
                                    buttontext = ""
                                }
                            }
                        }
                        label:{
                            Image(systemName:"button.programmable")
                                .resizable()
                                .frame(width:80, height:80)
                                .foregroundColor(.blue)
                        }
                        .overlay(
                            Text(buttontext)
                                .font(.system(size: 13))
                        )
                    }
                    .frame(maxWidth:200)
                    VStack{
                        Text(changed1)
                            .font(.system(size:30))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle()
                                .fill(Color.purple)
                                .cornerRadius(10)
                            )
                            .opacity(Double(changed1opacity))
                            .frame(maxWidth:200, maxHeight:105)
                        Text(changed2)
                            .font(.system(size:20))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle()
                                .fill(Color.purple)
                                .cornerRadius(10)
                            )
                            .opacity(Double(changed2opacity))
                            .frame(maxWidth:200, maxHeight:220)
                        Text(changed3)
                            .font(.system(size:20))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle()
                                .fill(Color.purple)
                                .cornerRadius(10)
                            )
                            .opacity(Double(changed3opacity))
                            .frame(maxWidth:200, maxHeight:200)
                    }
                    .frame(maxWidth:200)
                }
                HStack{
                    Spacer()
                    NavigationLink(destination: Human().navigationBarBackButtonHidden(true)){
                        Text("Done")
                            .foregroundColor(.white)
                            .padding(.bottom, 20)
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width:40, height:40)
                            .padding(.trailing, 20)
                            .padding(.bottom, 20)}
                }
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}   
struct DropViewDelegate: DropDelegate {
    @Binding var droppedText: String
    @Binding var thought1: String
    @Binding var thought2: String
    @Binding var thought3: String
    @Binding var rationalitydisplayopacity: Int
    @Binding var rationality1opacity: Int
    @Binding var rationality2opacity: Int
    @Binding var rationality3opacity: Int
    @Binding var brainopacity: Int

    func performDrop(info: DropInfo) -> Bool {
        let itemProvider = info.itemProviders(for: ["public.text"]).first
        guard let item = itemProvider else { return false } 
        if item.hasItemConformingToTypeIdentifier("public.plain-text") {
            item.loadDataRepresentation(forTypeIdentifier: "public.plain-text") { data, error in
                if let data = data, let text = String(data: data, encoding: .utf8) {
                    droppedText = text
                    if droppedText == thought1{
                        rationality2opacity = 0
                        rationality3opacity = 0
                        rationality1opacity = 1
                        rationalitydisplayopacity = 1
                        brainopacity = 1
                    }
                    else if droppedText == thought2{
                        rationality1opacity = 0
                        rationality3opacity = 0
                        rationality2opacity = 1
                        rationalitydisplayopacity = 1
                        brainopacity = 1
                    }
                    else if droppedText == thought3{
                        rationality1opacity = 0
                        rationality2opacity = 0
                        rationality3opacity = 1
                        rationalitydisplayopacity = 1
                        brainopacity = 1
                    }
                }
            }
        }
        return true
    }
    func dropEntered(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .copy)
    }
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .copy)
    }
}       
