import SwiftUI

struct AnxiousThoughts: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Anxious Thoughts")
                    .font(.system(size:30, weight: .bold))
                    .padding(.bottom, 20)
                Text("**🛑Cause:**")
                    .font(.system(size:20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Having anxious thoughts is a natural response to 😰stress. But these thoughts can be unhelpful and perpetuate our anxiety.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 20)
                Text("**✅Strategies:**")
                    .font(.system(size:20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("A CBT (Cognitive Behavioral Therapy) technique called 🔎Reframing can help shift your outlook on situations.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom,5)
                NavigationLink(destination: Reframing().navigationBarBackButtonHidden(true)){ 
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
