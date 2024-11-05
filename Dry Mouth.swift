import SwiftUI

struct DryMouth: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Dry Mouth")
                    .font(.system(size: 30, weight: .bold))
                    .padding(.bottom, 20)
                Text("🛑**Cause:**")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Anxiety activates the ⚔️fight or 🏃flight response which halts our digestion and production of saliva so that all our resources can be dedicated to fighting or fleeing")
                        .padding(.trailing, 5)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 5)
                Text("✅**Strategies:**")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Drink lots of 🌊water before your presentation")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.bottom, 5)
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Have a 🌊water bottle in reach during the presentation")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                NavigationLink(destination: Water().navigationBarBackButtonHidden(true)){ 
                    Text("Learn More")
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
