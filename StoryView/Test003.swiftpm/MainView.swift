import SwiftUI

struct MainView: View {

    @Binding var pageStatus:PageStatus

    var body: some View {
        VStack {
            Text("시비없는 12팀으로 알아보는")
                .font(.system(size: 16))
                .padding(0.001)
                .padding(.bottom, -10)
            
            Text("나는 어떤 러너일까!?")
                .fontWeight(.black)
                .font(.system(size: 32))
                .padding(.bottom, 30)
            
            Image("logo 1")
                .resizable()
                .foregroundColor(.accentColor)
                .frame(width: 200, height: 200)
                .padding(.bottom, 40)


            Text("MC1에서 나는")
                .font(.system(size: 20))
            Text("어떤 유형의 러너였을지 알아보자!")
                .font(.system(size: 20))
            

            Button{
                pageStatus = .STORY
                
            } label: {
                Text("테스트 시작하기")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(width: 250)
                    .padding(20)
                    .background(Color(0x24E7B0))
                    .cornerRadius(15)
                    .padding(.top)
            }
            
        }
    }
}


extension Color {
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex>>16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double((hex >> 0) & 0xFF) / 255,
            opacity: alpha
        )
    }
}
