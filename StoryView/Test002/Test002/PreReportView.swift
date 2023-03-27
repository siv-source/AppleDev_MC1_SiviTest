import SwiftUI

struct PreReportView: View {
    let imageNames = ["001","002","003","004","005","006"]
    @State private var currentImageIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(imageNames[currentImageIndex])
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                        currentImageIndex = (currentImageIndex + 1) % imageNames.count}
                }
            Spacer().frame(height:20)
            Text("처리중~")
            Spacer()
        }
    }
}

// 컨텐트뷰_프리뷰
struct PreReportView_Previews: PreviewProvider {
    static var previews: some View {
        PreReportView()
    }
}
