import SwiftUI

import SwiftUI

struct Practice: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Practice, Practice, Repeat")
                    .font(.system(size:30, weight: .bold))
                    .padding(.bottom, 20)
                Text("❓**Why:**")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("The more you understand and feel comfortable with your material, the more 😎confidence you'll have. So practice until you know your presentation forwards and backwards and can do it in your 💤sleep!")
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
                    Text("Practice under ⚠️'mild stress' to mimic the environment of the actual presentation")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Record yourself to catch subconsious 🗣️filler words and to modulate your pace")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                NavigationLink(destination: AR().navigationBarBackButtonHidden(true)){ 
                    Text("Practice with an audience in AR")
                        .foregroundColor(.white)
                    Image(systemName:"arrow.right.circle.fill")
                        .resizable()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width:40, height:40)
                    
                }
                .padding(.top, 100)
                Text("(Try to point your camera at an open area)")
                    .font(.system(size:10))
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color.black)
            .foregroundColor(.white)
        }
        .navigationViewStyle(.stack)
    }
}
