import SwiftUI

struct Water: View {
    @State private var iceWaterDescOpacity = 0
    @State private var sparklingWaterDescOpacity = 0
    @State private var waterDescOpacity = 0
    @State private var sodaDescOpacity = 0
    @State private var iceWaterXOpacity = 0
    @State private var sparklingWaterXOpacity = 0
    @State private var waterXOpacity = 0
    @State private var sodaXOpacity = 0
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Click on each bottle to learn more!")
                    .font(.system(size:30, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 40)
                HStack(spacing:100){
                    VStack{
                       Image("Ice Water")
                            .resizable()
                            .frame(width:150, height:350)
                            .overlay(
                                Button{
                                    iceWaterDescOpacity = 1
                                    iceWaterXOpacity = 1
                                }
                                label:{
                                    Rectangle()
                                        .fill(Color.clear)
                                }
                            )
                            .overlay(
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.yellow)
                                    .opacity(Double(iceWaterXOpacity))
                            )
                        Text("Cold beverages can restrict vocal chords.")
                            .font(.system(size:13))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle().fill(Color.red)
                                .cornerRadius(10))
                            .frame(maxWidth:200, maxHeight:105)
                            .opacity(Double(iceWaterDescOpacity))
                    }
                    VStack{
                       Image("Sparkling Water") 
                            .resizable()
                            .frame(width:150, height:350)
                            .overlay(
                                Button{
                                    sparklingWaterDescOpacity = 1
                                    sparklingWaterXOpacity = 1
                                }
                                label:{
                                    Rectangle().fill(Color.clear)
                                }
                            )
                            .overlay(
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.yellow)
                                    .opacity(Double(sparklingWaterXOpacity))
                            )
                        Text("Sparkling or carbonated beverages can cause you to burp.")
                            .font(.system(size:13))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle().fill(Color.red)
                                .cornerRadius(10))
                            .frame(maxWidth:200, maxHeight:105)
                            .opacity(Double(sparklingWaterDescOpacity))
                    }
                    VStack{
                        Image("Water")
                            .resizable()
                            .frame(width:150, height:350)
                            .overlay(
                                Button{
                                    waterDescOpacity = 1
                                    waterXOpacity = 1
                                }
                                label:{
                                    Rectangle().fill(Color.clear)
                                }
                            )
                            .overlay(
                                Image(systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.green)
                                    .opacity(Double(waterXOpacity))
                             )
                        Text("Flat room temperature water is the best choice to stay hydrated.")
                            .font(.system(size:13))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle().fill(Color.green)
                                .cornerRadius(10))
                            .frame(maxWidth:200, maxHeight:105)
                            .opacity(Double(waterDescOpacity))
                    }
                    VStack{
                        Image("Soda")
                            .resizable()
                            .frame(width:150, height:350)
                            .overlay(
                                Button{
                                    sodaDescOpacity = 1
                                    sodaXOpacity = 1
                                }
                                label:{
                                    Rectangle().fill(Color.clear)
                                }
                            )
                            .overlay(
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.yellow)
                                    .opacity(Double(sodaXOpacity))
                            )
                        Text("Caffeinated and sugary beverages can make you jittery and can worsen a dry mouth.")
                            .font(.system(size:13))
                            .padding()
                            .multilineTextAlignment(.center)
                            .background(Rectangle().fill(Color.red)
                                .cornerRadius(10))
                            .frame(maxWidth:200, maxHeight:105)
                            .opacity(Double(sodaDescOpacity))
                    }
                }
                HStack{
                    Spacer()
                    NavigationLink(destination: Human()
                        .navigationBarBackButtonHidden(true)){
                        Text("Done")
                            .foregroundColor(.white)
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width:40, height:40)
                            .padding(.trailing, 20)
                        }
                }
                .padding(.bottom, 10)
                .padding(.top, 50)
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}
