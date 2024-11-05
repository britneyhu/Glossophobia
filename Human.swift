import SwiftUI

struct Human: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Click on different areas to explore common symptoms and strategies:")
                    .font(.system(size:25))
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                Image("Human")
                    .overlay(
                        NavigationLink(destination: AnxiousThoughts().navigationBarBackButtonHidden(true)){
                            Color.clear
                        }
                        .frame(width: 50, height: 30)
                        .position(x: 130, y: 22)
                    )
                    .overlay(
                        HStack{
                            Text("Anxious Thoughts")
                                .font(.system(size: 12))
                                .position(x: 35, y: 22)
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 14, height: 12)
                                .position(x: -35, y: 22)
                        }
                    )
                    .overlay(
                        NavigationLink(destination: DryMouth().navigationBarBackButtonHidden(true)){
                            Color.clear
                        }
                        .frame(width: 40, height: 20)
                        .position(x: 130, y: 60)
                    )
                    .overlay(
                        HStack{
                            Text("Dry Mouth")
                                .font(.system(size: 12))
                                .position(x: 200, y: 60)
                            Image(systemName: "arrow.left")
                                .resizable()
                                .frame(width: 14, height: 12)
                                .position(x: 20, y: 60)
                        }
                    )
                    .overlay(
                        NavigationLink(destination: Shaky().navigationBarBackButtonHidden(true)){
                            Color.clear
                        }
                        .frame(width: 20, height: 100)
                        .position(x: 130, y: 130)
                    )
                    .overlay(
                        NavigationLink(destination: Shaky().navigationBarBackButtonHidden(true)){
                                Color.clear
                        }
                        .frame(width: 95, height: 80)
                        .position(x: 130, y: 150)
                    )
                    .overlay(
                        HStack{
                            Text("Shaky Voice and Hands")
                                .font(.system(size: 12))
                                .position(x: 25, y: 150)
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 14, height: 12)
                                .position(x: -60, y: 150)
                        }
                     )
                    .overlay(
                        NavigationLink(destination: Shaky().navigationBarBackButtonHidden(true)){
                            Color.clear
                        }
                        .frame(width: 50, height: 60)
                        .position(x: 30, y: 320)
                    )
                    .overlay(
                        NavigationLink(destination: Shaky().navigationBarBackButtonHidden(true)){
                            Color.clear
                        }
                        .frame(width: 50, height: 60)
                        .position(x: 230, y: 320)
                    )
                HStack{
                    Spacer()
                    NavigationLink(destination: Practice().navigationBarBackButtonHidden(true)){ 
                        Text("Let's Practice")
                            .foregroundColor(.white)
                            .font(.system(size:15))
                        Image(systemName:"arrow.right.circle.fill")
                            .resizable()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width:25, height:25)
                    }
                    .padding(.bottom, 20)
                    .padding(.trailing, 10)
                }
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}
