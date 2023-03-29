import SwiftUI

// 컴포넌트를 많이 써본다.
struct ContentView: View {
    @State var currentPage = 0
    @State var scores: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0] //피터, 기현, 탐라, 린, 다나, 도리스 순 
    var body: some View {
        let pageNum : Int = ContentString.storyData.count
        // 버티컬리하게 쪼갠다.
        VStack {
            if currentPage >= pageNum {
                LoadingView(count: $currentPage, scores: $scores)
            } else if currentPage == 0{
                MainView(count: $currentPage)
            } else {
                StoryView(count: $currentPage, scores:$scores)
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
