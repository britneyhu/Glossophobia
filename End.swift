import SwiftUI

struct End: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Good luck on your presentation!")
                    .font(.system(size:50, weight: .bold))
                    .padding(.bottom, 10)
                    .padding(.top, 30)
                Text("**Remember To**")
                    .font(.system(size:30))
                    .padding(.bottom, 70)
                NavigationLink(destination: Water().navigationBarBackButtonHidden(true)){
                    Text("🌊Stay hydrated🌊")
                        .font(.system(size: 20))
                        .padding(.bottom, 15)
                        .foregroundColor(.blue)
                }
                NavigationLink(destination: Breathe().navigationBarBackButtonHidden(true)){
                    Text("🌬️Breathe🌬️")
                        .font(.system(size: 20))
                        .padding(.bottom, 15)
                        .foregroundColor(.blue)
                }
                NavigationLink(destination: Reframing().navigationBarBackButtonHidden(true)){
                    Text("😄Think positive😄")
                        .font(.system(size: 20))
                        .padding(.bottom, 15)
                        .foregroundColor(.blue)
                }
                NavigationLink(destination: AR().navigationBarBackButtonHidden(true)){
                    Text("🎤Practice🎤")
                        .font(.system(size: 20))
                        .padding(.bottom, 15)
                        .foregroundColor(.blue)
                }
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}
