import SwiftUI

struct SlideView: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    @Binding var count:Int
    @Binding var webView:Bool
    
    var body: some View {
        let content = ContentString.storyData[count%ContentString.storyData.count]
        HStack {
            VStack{
                Spacer().frame(width:20, height: 30)
                // DAY 구문
                HStack(){
                    Spacer().frame(width:20)
                    Text("DAY "+String(describing:(content.day)) + ".")
                        .frame(width: 310,height: 30, alignment: .leading)
                        .font(.system(size: 32).weight(.bold))
                    
                    Spacer().frame(width:20)
                }
                VStack{
                    Spacer().frame(width:20,height:50)
                    
                    // 문제 구문
                    HStack(){
                        Spacer().frame(width:20)
                        HStack(alignment: .center){
                            Button {
                                webView = true
                            } label: {
                                Image(systemName: "chevron.backward").resizable()
                                    .frame(width: 15.0, height: 22.0).foregroundColor(Color(0x24E7B0))
                            }
                            Spacer().frame(width:20)
                            Text(content.question) // 어찌된 이유인지 버튼을 빠르게 누를 때 자꾸 count가 값을 벗어남...ㅠ
                                .font(.system(size:24))
                                .fontWeight(.medium)
                                .lineSpacing(5)
                        }
                        Spacer().frame(width:20)
                    }.frame(height:90)
                    
                    Spacer().frame(width:20,height:20)
                    
                    Group{
                        
                        // 갯수가 많아지면 렉걸린댄다... (그룹화 중요하지.. 암)
                        //ForEach는 Hashable 하게 써야 동적인 (표시해야할 갯수가 세 개에서 네 개가 된다든지) 에서도 사용할 수 있다.
                        ForEach(content.answers, id:\.self){ answer in
                            SlideAnswerView(scores: $scores, count: $count,pageStatus:$pageStatus,webView:$webView, answer: answer)
                        }
                    }
                    Spacer().frame(width:20,height:60)
                    
                }
                Spacer()
                
                Button(action: {
                    // print("메인으로 돌아가기")
                    pageStatus = .MAIN
                    scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                    
                }) {
                    Text("메인으로 돌아가기")
                        .underline()
                        .foregroundColor(Color(0xA7A7A7))
                }
                
                Spacer().frame(height:20)
            
            }
        }
    }
}

struct SlideAnswerView : View {
    @Binding var scores:[Double]
    @Binding var count : Int
    @Binding var pageStatus : PageStatus
    @Binding var webView:Bool
    var answer : Answer
    var body: some View {
        VStack{
            AnswerButton(text: answer.state, foreBackColors: Colors.template, action: {
                if count < ContentString.storyData.count-1{
                    count += 1
                } else {
                    pageStatus = .PREREPORT
                }
                webView = true
                scores = zip(scores, answer.score).map(+) //더하기
            })
        }
    }
}

struct AnswerButton: View{
    var text : String
    var foreBackColors : [Colors]
    var action:() -> Void
    var body: some View{
        Button(action: self.action){}
            .buttonStyle(AnswerButtonStyle(text: self.text, foreBackColors: self.foreBackColors))
            .padding(.top, 10)

    }
}

struct AnswerButtonStyle : ButtonStyle{
    var text: String
    var foreBackColors: [Colors]
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let displayText = configuration.isPressed ? foreBackColors[1] : foreBackColors[0]
        return RoundedTextView(text: self.text, colors: displayText)
    }
}

struct RoundedTextView: View {
    let text : String
    let colors : Colors
    var body: some View {
        // text 카운트 한다
        let textlength : Int = self.text.count
        if textlength >= 28 {
            AnswerText(text: self.text, colors: self.colors, height: 48)
            }
        else {
            AnswerText(text: self.text, colors: self.colors, height: 30)
        }
    }
}

struct AnswerText:View{
    var text:String
    var colors:Colors
    var height:CGFloat
    
    var body:some View{
        Text(text)
            .font(.system(size:16))
            .frame(width: 320,height:self.height, alignment: .center)
            .padding(10)
            .foregroundColor(colors.color1)
            .background(colors.color2)
            .multilineTextAlignment(.center)
            .cornerRadius(15)
            .overlay{
                RoundedRectangle(cornerRadius: 15).strokeBorder(Color.gray, lineWidth: 0.3)
            }
            .shadow(color: Color(0xCECECE).opacity(0.6), radius: 2)
    }
}

// 컨텐트뷰_프리뷰
struct SlideView_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.STORY
    @State static var scores:[Double] = [0.2,0.3,0.4,0.5,0.6,0.7]
    @State static var count:Int = 2
    @State static var webView:Bool = true
    static var previews: some View {
        SlideView(pageStatus: $pageStatus,scores: $scores, count: $count, webView: $webView)
    }
}
