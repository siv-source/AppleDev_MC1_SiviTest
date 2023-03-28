import SwiftUI

struct Slide3View: View {
    @Binding var count:Int
    @Binding var value:Float
    
    var body: some View {
        HStack {
            Spacer().frame(width:20).background(Color.blue)
            VStack{
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
                    Text("같은 그룹에 속해있는 다른 팀과 Our Solution Concept을 공유하기 위해, 발표를 했다. 워라벨을 중요시한 우리팀의 부족한 발표준비가 들통나 부족함을 지적 받았다. 당신의 반응은?")
                        .font(.system(size:400))
                        .minimumScaleFactor(0.01)
                    Spacer().frame(width:20)
                }.frame(height:120)
                // 갯수가 많아지면 렉걸린댄다... (그룹화 중요하지.. 암)
                Group{
                    Spacer().frame(width:20,height:60)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(1)
                    }) {
                        RoundedTextView(text : "우리 아이디어는 괜찮은 것 같은데... 다음 발표에 대한 자료 준비와 정리를 잘해야겠군! ")
                        
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        RoundedTextView(text : "시무룩하지만 부족한 점을 숙지하고, 그 부분을 채우기 위해 자료조사도 하고, 정리도 제안해봐야겠다! ")
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        RoundedTextView(text : "시비팀 수고했어요~~ 다음에 열심히 하면 되죠~~ 일단 긍정적인 마인드를 되찾는다. ")
                    }
                    Spacer().frame(width:20,height:20)
                    
                    //                    Button(action: {
                    //                        // What to perform
                    //                        count += 1
                    //                        value = Float(count)/8
                    //                        print(4)
                    //                    }) {
                    //                        RoundedTextView(text : "새로운 사람, 말걸기 무서워! 가만히 있는다.")
                    //                    }
                }
            }
        }
    }
}

// 컨텐트뷰_프리뷰
struct Slide3View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    static var previews: some View {
        Slide3View(count: $count,value: $value)
    }
}
