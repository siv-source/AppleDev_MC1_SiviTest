import SwiftUI

struct Slide2View: View {
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
                    Text(
                        "GUIDING QUESTION의 답을 구하기 위해, 2인 1조로 1대일 인터뷰를 하기로 한다. 당신은 어떻게 행동하겠는가?")
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
                        RoundedTextView(text : "각자 조가 짜지고 난 뒤, 남는 팀원과 함께 간다.")
                        
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        RoundedTextView(text : "누구와 가도 상관없어! 일단 바로 인터뷰할 사람을 물색한다.")
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        RoundedTextView(text : "새로운 사람에게 말을 거는게 어렵기 때문에, 친화력이 좋은 팀원의 도움을 받는다.")
                    }
                    Spacer().frame(width:20,height:20)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(4)
                    }) {
                        RoundedTextView(text : "새로운 사람과 말하는 것을 어려워하는 팀원이 있는지 물어보고, 나와 함께 하자고 한다. ")
                    }
                }
            }
        }
    }
}
// 컨텐트뷰_프리뷰
struct Slide2View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    static var previews: some View {
        Slide2View(count: $count,value: $value)
    }
}
