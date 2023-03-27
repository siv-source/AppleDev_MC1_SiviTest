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
                StoryView(count: $currentPage, value: $progressValue)
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
