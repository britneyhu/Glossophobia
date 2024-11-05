import SwiftUI

struct Report: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Report")
                NavigationLink(destination: AR().navigationBarBackButtonHidden(true)){ 
                    Text("Practice Again?").foregroundColor(.white)
                    Image(systemName: "checkmark.circle")
                    .resizable().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).frame(width:40, height:40)}.padding(.top, 100)
                NavigationLink(destination: Human().navigationBarBackButtonHidden(true)){ 
                    Text("Back to strategies").foregroundColor(.white)
                    Image(systemName: "checkmark.circle")
                    .resizable().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).frame(width:40, height:40)}.padding(.top, 100)
                
            }.frame(maxWidth:.infinity, maxHeight:.infinity)
                .background(Color.black)
                .foregroundColor(.white)
        }.navigationViewStyle(.stack)
    }
}
