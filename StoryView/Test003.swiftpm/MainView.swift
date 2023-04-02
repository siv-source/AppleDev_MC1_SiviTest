import SwiftUI

struct MainView: View {

    @Binding var pageStatus:PageStatus

    var body: some View {
        Spacer()
            .frame(height: 35)
        
        VStack {
            Text("시비없는 12팀으로 알아보는")
                .font(.system(size: 16))
                //.padding(5)
            
            Text("나는 어떤 러너일까!?")
                .fontWeight(.black)
                .font(.system(size: 32))
                .padding(.bottom, 30)
                .padding(.top, 0.0002)
            
            Image("logo 1")
                .resizable()
                .foregroundColor(.accentColor)
                .frame(width: 200, height: 200)
                .padding(.bottom, 40)
            
            Spacer()
                .frame(height: 14)

            Text("MC1에서 나는")
                .font(.system(size: 20))
                .fontWeight(.regular)
            Text("어떤 성향의 러너였을지 알아보자!")
                .font(.system(size: 20))
                .fontWeight(.regular)
            
            Spacer()
                .frame(height: 5)
            
            Button{
                pageStatus = .STORY
                
            } label: {
                Text("테스트 시작하기")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(width: 250)
                    .padding(15)
                    .background(Color(0x24E7B0))
                    .cornerRadius(20)
                    .padding(.top)
            }
            
            Spacer()
                .frame(height: 60)
            
        }
    }
}


