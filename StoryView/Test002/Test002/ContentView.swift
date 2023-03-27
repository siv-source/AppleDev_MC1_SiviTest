import SwiftUI

// 컴포넌트를 많이 써본다.
struct ContentView: View {
    @State var currentPage = 1
    @State var progressValue: Float = 0.0
    
    var body: some View {
        
// 버티컬리하게 쪼갠다.
        VStack {
            if currentPage == 8 {
                PreReportView()
            } else {
                
                Spacer().frame(width: 40,height: 30)
                HStack{
                    Spacer().frame(width: 20)
                    VStack{
                        Text(String(currentPage) + " / 8")
                            .font(.system(size: 30))
                            .bold()
                    }
                    Spacer()
                }
                Spacer().frame(height:20)
                
                ProgressBar(value: $progressValue).frame(height: 20)
                
                ContentSlide0View(count: $currentPage,
                                  value: $progressValue)
                Spacer().frame(width: 40,height:120)
            }
        }.padding()
    }
}

// 컨텐트뷰_프리뷰
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// 프로그레스 바
struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
            ZStack(alignment: .leading) {
                Rectangle().frame(width: 340 , height: 40)
                    .opacity(0.2) //불투명도
                    .foregroundColor(Color.gray)
                Rectangle().frame(width: min(CGFloat(self.value)*340, 340), height: 40)
                    .foregroundColor(Color.orange)
            }.cornerRadius(45.0)
    }
}
