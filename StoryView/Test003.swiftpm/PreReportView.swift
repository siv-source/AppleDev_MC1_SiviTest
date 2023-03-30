import SwiftUI

struct PreReportView: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    
    
    let imageNames = ["001","002","003","004","005","006"]
    @State private var currentImageIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(imageNames[currentImageIndex])
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .onReceive(Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()) { _ in
                    currentImageIndex = (currentImageIndex + 1) % imageNames.count
                }
            
            Spacer().frame(height:40)
            
            Text("당신의 러너 캐릭터를")
                .fontWeight(.bold)
            Text("분석하고 있어요")
                .fontWeight(.bold)
                
            Spacer()
            Button(
                action: {
                    print(scores)
                    pageStatus = .MAIN
                    scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                }){Text("메인으로 돌아가기")
                        .underline()
                        .foregroundColor(Color(0x24E7B0))
                }
        }
    }
}

// 컨텐트뷰_프리뷰
struct PreReportView_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.PREREPORT
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        PreReportView(pageStatus: $pageStatus, scores: $scores)
    }
}
