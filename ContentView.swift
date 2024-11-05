import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("GLOSSOPHOBIA")
                    .font(.system(size:45, weight: .bold))
                    .foregroundColor(.white)
                Text("AKA: Fear of Public Speaking")
                    .font(.system(size:20))
                    .foregroundColor(.white)
                NavigationLink(destination: Page2().navigationBarBackButtonHidden(true)){ 
                    Text("Where does this fear come from?")
                        .foregroundColor(.white)
                    Image(systemName:"arrow.right.circle.fill")
                        .resizable()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width:40, height:40)                  
                }
                .padding(.top, 100)
            }
            .frame(maxWidth: .infinity, maxHeight:.infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color.black)
        }
        .navigationViewStyle(.stack)
    }
}

