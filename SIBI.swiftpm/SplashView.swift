import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("logo 1")
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.accentColor)
                .offset(y:-1)
            Text("나는 어떤 러너일까!?")
                .offset(y: -8)
            
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
