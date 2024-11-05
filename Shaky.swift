import SwiftUI

import SwiftUI

struct Shaky: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Shaky Voice and Hands")
                    .font(.system(size:30, weight: .bold))
                    .padding(.bottom, 20)
                Text("🛑**Cause:**")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Anxiety causes and increase in 🎢adrenaline which our body wants to use up as fast as possible resulting in shaky voice and hands")

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 20)
                Text("✅**Strategies:**")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("🏃Exercise before the presentation")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Control your 🌬️breating, slow and deep breathing can calm your body and heart rate")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                NavigationLink(destination: Breathe().navigationBarBackButtonHidden(true)){ 
                    Text("Try it out")
                        .foregroundColor(.white)
                    Image(systemName:"arrow.right.circle.fill") 
                        .resizable()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width:40, height:40)
                }
                .padding(.top, 100)
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}
