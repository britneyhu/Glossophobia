import SwiftUI

struct Page2: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("The fear of public speaking stems from your 👶biology, 🧠psychology, and 👥social factors.")
                    .padding(.bottom, 20)
                    .font(.system(size:40))
                    .multilineTextAlignment(.center)
                Text("For example:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                    .font(.system(size:20))
                HStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color.red)
                    Text("Social anxiety disorder")
                        .font(.system(size:20))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 10)
                HStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color.red)
                    Text("Fear of being embarassed or rejected")
                        .font(.system(size:20))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 10)
                HStack{
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color.red)
                    Text("Previous bad experiences")
                        .font(.system(size:20))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 10)
                NavigationLink(destination: Human().navigationBarBackButtonHidden(true)){ Text("Let's explore the symptoms")
                    .foregroundColor(.white)
                Image(systemName:"arrow.right.circle.fill")
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width:40, height:40)}
                    .padding(.top, 100)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color.black)
            .foregroundColor(.white)    
        }
        .navigationViewStyle(.stack)        
    }
}

