import SwiftUI

struct PreReportView: View {
    @Binding var count:Int
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
                .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
                    currentImageIndex = (currentImageIndex + 1) % imageNames.count
                }
            
            Spacer().frame(height:20)
            Text("처리중~")
            Spacer()
            Button(
                action: {
                    print(scores)
                    count = 1
                    scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                }){Text("메인으로 돌아가기...")
                }
        }
    }
}

// 컨텐트뷰_프리뷰
struct PreReportView_Previews: PreviewProvider {
    @State static var count = 1
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        PreReportView(count: $count,scores: $scores)
    }
}