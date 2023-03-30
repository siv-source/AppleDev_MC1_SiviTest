import SwiftUI

struct SlideView: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    @Binding var count:Int
    
    var body: some View {
        let content = ContentString.storyData[count%ContentString.storyData.count]
        HStack {
            VStack{
                // DAY 구문
                HStack(){
                    Spacer().frame(width:20)
                    Text("Day "+String(describing:(count+1)))
                        .frame(width: 340,height: 30, alignment: .leading)
                        .font(.system(size: 25).bold())
                    
                    Spacer().frame(width:20)
                }
                
                Spacer().frame(width:20,height:10)
                
                // 문제 구문
                HStack(){
                    Spacer().frame(width:20)
                    Text(content.question) // 어찌된 이유인지 버튼을 빠르게 누를 때 자꾸 count가 값을 벗어남...ㅠ
                        .font(.system(size:24))
                        .minimumScaleFactor(0.01)
                        .lineSpacing(5)
                        .frame(width: 350)
                    Spacer().frame(width:20)
                }.frame(height:120)
                Spacer().frame(width:20,height:30)
                
                Group{
                    
                    // 갯수가 많아지면 렉걸린댄다... (그룹화 중요하지.. 암)
                    //ForEach는 Hashable 하게 써야 동적인 (표시해야할 갯수가 세 개에서 네 개가 된다든지) 에서도 사용할 수 있다.
                    ForEach(content.answers, id:\.self){ answer in
                        SlideAnswerView(scores: $scores, count: $count,pageStatus:$pageStatus, answer: answer)
                    }
                }
                
                Spacer().frame(width:20,height:60)
                
                Button(action: {
                    // print("메인으로 돌아가기")
                    pageStatus = .MAIN
                    scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                    
                }) {
                    Text("메인으로 돌아가기")
                        .underline()
                        .foregroundColor(Color(0x24E7B0))
                }
            }
        }
    }
}

struct RoundedTextView: View {
    let text : String
    let colors : Colors
    var body: some View {
        
        Text(text)
            .font(.system(size:15))
            .frame(width: 320,height:40, alignment: .center)
            .padding(10)
            .foregroundColor(colors.color1)
            .background(colors.color2)
            .cornerRadius(15)
            .overlay{
                RoundedRectangle(cornerRadius: 15).strokeBorder(Color.gray, lineWidth: 0.3)
            }
            .shadow(color: Color(0xCECECE).opacity(0.6), radius: 2)
    }
}

struct AnswerButton: View{
    var text : String
    var foreBackColors : [Colors]
    var action:() -> Void
    var body: some View{
        Button(action: self.action){}
            .buttonStyle(AnswerButtonStyle(text: self.text, foreBackColors: self.foreBackColors))
    }
}

struct SlideAnswerView : View {
    @Binding var scores:[Double]
    @Binding var count : Int
    @Binding var pageStatus : PageStatus
    var answer : Answer
    var body: some View {
        VStack{
            AnswerButton(text: answer.state, foreBackColors: Colors.template, action: {
                if count < ContentString.storyData.count-1{
                    count += 1
                } else {
                    pageStatus = .PREREPORT
                }
                scores = zip(scores, answer.score).map(+) //더하기
            })
        }
    }
}

// 컨텐트뷰_프리뷰
struct SlideView_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.STORY
    @State static var scores:[Double] = [0.2,0.3,0.4,0.5,0.6,0.7]
    @State static var count:Int = 2
    static var previews: some View {
        SlideView(pageStatus: $pageStatus,scores: $scores, count: $count)
    }
}
