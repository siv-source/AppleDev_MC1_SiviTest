import SwiftUI

struct Slide7View: View {
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
                    Text("두번째 사이클 시작, 스토리를 SwiftUI로 표현하기 위해 아이디어 Guiding Question과 Answer 과정을 행하는 중… 당신의 역할은?")
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
                        RoundedTextView(text : "분위기 조성을 위해 다른 러너의 장점이 보일 때마다 칭찬 공격! ")
                        
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        RoundedTextView(text : "회의 중 막히는 부분이 있거나, 논지를 벗어날 때 한번씩 정리하기")
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        RoundedTextView(text : "우리 팀원들 대단해~좋아요~(긍정 리액션담당!) 공감해주기! ")
                    }
                    Spacer().frame(width:20,height:20)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(4)
                    }) {
                        RoundedTextView(text : "우리 팀원들 아이디어 정말 대단해..! 팀원들의 아이디어에 추가 의견을 생각해낸다.")
                    }
                }
            }
        }
    }
}
// 컨텐트뷰_프리뷰
struct Slide7View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    static var previews: some View {
        Slide7View(count: $count,value: $value)
    }
}
