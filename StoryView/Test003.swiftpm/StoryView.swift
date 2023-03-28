import SwiftUI

struct StoryView: View {
    @Binding var count:Int
    @Binding var value:Float
    
    var body: some View {
        Spacer().frame(width: 40,height: 30)
        HStack{
            Spacer().frame(width: 20)
            VStack{
                //Text(String($count)+" / 8") // build error
                Text(String(describing:count)+" / 8")
                    .font(.system(size: 30))
                    .bold()
            }
            Spacer()
        }
        Spacer().frame(height:20)
        
        ProgressBar(value: $value).frame(height: 20)
        Spacer().frame(height:30)
        switch count{
        case 1:
            Slide1View(count: $count,value: $value)
        case 2:
            Slide2View(count: $count,value: $value)
        case 3:
            Slide3View(count: $count,value: $value)
        case 4:
            Slide4View(count: $count,value: $value)
        case 5:
            Slide5View(count: $count,value: $value)
        case 6:
            Slide6View(count: $count,value: $value)
        case 7:
            Slide7View(count: $count,value: $value)
        case 8:
            Slide8View(count: $count,value: $value)
        default:
            Slide1View(count: $count,value: $value)
        }

        Spacer()
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
