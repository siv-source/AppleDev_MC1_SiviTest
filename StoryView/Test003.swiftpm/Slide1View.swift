import SwiftUI

struct Slide1View: View {
    @Binding var count:Int
    @Binding var value:Float
    @Binding var scores:[Double]
    let content = ContentString.storyData
    var indexnum = 0
    
    var body: some View {
        HStack {
            Spacer().frame(width:20).background(Color.blue)
            VStack{
                //                ForEach(0..<3){ index in
                //                    Text(String(describing:index))}
                HStack(){
                    Spacer().frame(width:20)
                    Text("Q"+String(describing:count))
                        .frame(width: 300,height:60, alignment: .leading)
                        .font(.system(size: 30).bold())
                    Spacer().frame(width:20)
                }
                Spacer().frame(width:20,height:10)
                HStack(){
                    Spacer().frame(width:20)
                    Text(ContentString.storyData[0].question)
                        .font(.system(size:400))
                        .minimumScaleFactor(0.01)
                    Spacer().frame(width:20)
                }.frame(height:120)
                Spacer().frame(width:20,height:60)  
                Group{ // 갯수가 많아지면 렉걸린댄다... (그룹화 중요하지.. 암)
                    ForEach(0..<ContentString.storyData[0].answers.count){ index in
                        SlideAnswerView(scores: $scores, count: $count, value: $value,answerNum: index)}
                }
            }
        }
    }
}

struct RoundedTextView: View {
    let text : String
    var body: some View {
        
        Text(text)
            .font(.system(size:13))
            .frame(width: 320,height:40, alignment: .center)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 0)
            )
            .shadow(radius: 2)
    }
}

struct SlideAnswerView : View {
    @Binding var scores:[Double]
    @Binding var count : Int
    @Binding var value : Float
    var answerNum : Int
    var body: some View {
        VStack{                        
            Button(action: {
                // What to perform
                count += 1
                value = Float(count)/8
                scores = zip(scores, ContentString.storyData[0].answers[answerNum].score).map(+) //더하기
            }) {
                RoundedTextView(text:ContentString.storyData[0].answers[answerNum].state)
            }
            Spacer().frame(width:20,height:20)
        }
    }
}
// 컨텐트뷰_프리뷰
struct Slide1View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    @State static var scores:[Double] = [0.2,0.3,0.4,0.5,0.6,0.7]
    static var previews: some View {
        Slide1View(count: $count,value: $value,scores: $scores)
    }
}
