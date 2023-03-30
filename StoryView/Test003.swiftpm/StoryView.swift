import SwiftUI

struct StoryView: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    @State var count : Int = 0
    @State var webView = true
    
    var body: some View {
        let totalPageNum : Int = ContentString.storyData.count
        let value : Double = Double(count+1)/Double(ContentString.storyData.count)
        if webView {
            MyWebView(urlToLoad: "https://ada-team12.web.app/test/" + String(count))
            Button{
                webView = false
            } label: {
                Text("다음")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(width: 250)
                    .padding(15)
                    .background(Color(0x24E7B0))
                    .cornerRadius(20)
                    .padding(.top)
            }
        }
        else {
            Spacer().frame(width: 40,height: 8)
            HStack{
                Spacer().frame(width: 35)
                VStack{
                    //Text(String($count)+" / 8") // build error
                    Text(String(describing:count+1) + " / " + String(describing:totalPageNum))
                        .font(.system(size: 20))
                        .foregroundColor(Color.gray)
                        .bold()
                }
                Spacer()
            }
            Spacer().frame(height:20)
            ProgressBar(value: value).frame(height: 20)
            Spacer().frame(height:30)
            SlideView(pageStatus: $pageStatus, scores: $scores, count: $count, webView:$webView)
            Spacer()
        }
    }
}

// 프로그레스 바
struct ProgressBar: View {
    var value: Double
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().frame(width: 320 , height: 25)
                .opacity(0.2) //불투명도
                .foregroundColor(Color.gray)
            Rectangle().frame(width: min(CGFloat(self.value)*340, 320), height: 25)
                .foregroundColor(Color(0x24E7B0))
        }.cornerRadius(45.0)
    }
}


// 컨텐트뷰_프리뷰
struct StoryView_Previews: PreviewProvider {
    @State static var pageStatus : PageStatus = .STORY
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        StoryView(pageStatus: $pageStatus, scores: $scores)
    }
}
