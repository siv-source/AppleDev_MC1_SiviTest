import SwiftUI

struct StoryView: View {
    @Binding var count:Int
    @Binding var scores:[Double]
    
    var body: some View {
        let pageNum : Int = ContentString.storyData.count
        let value : Double = Double(count)/Double(ContentString.storyData.count)
        Spacer().frame(width: 40,height: 30)
        HStack{
            Spacer().frame(width: 20)
            VStack{
                //Text(String($count)+" / 8") // build error
                Text(String(describing:count) + " / " + String(describing:pageNum))
                    .font(.system(size: 30))
                    .bold()
            }
            Spacer()
        }
        Spacer().frame(height:20)
        
        ProgressBar(value: value).frame(height: 20)
        Spacer().frame(height:30)
        SlideView(count: $count, scores: $scores)
        Spacer()
    }
}

// 프로그레스 바
struct ProgressBar: View {
    var value: Double
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle().frame(width: 340 , height: 40)
                .opacity(0.2) //불투명도
                .foregroundColor(Color.gray)
            Rectangle().frame(width: min(CGFloat(value)*340, 340), height: 40)
                .foregroundColor(Color.orange)
        }.cornerRadius(45.0)
    }
}
