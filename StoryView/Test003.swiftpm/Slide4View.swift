import SwiftUI

struct Slide4View: View {
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
                    Text("분위기 전환 및 팀원과의 친목도모를 위해 바다를 갔다. 밥과 디저트를 먹는 중… 당신은 무슨 생각 중인가?")
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
                        RoundedTextView(text : "요즘 물가가 많이 올랐군...")
                        
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        RoundedTextView(text : "밥을 먹고 있지만 어제 발표 지적을 받았으니 앞으로 발표준비는 어떤 식으로 할지 속으로 자꾸 생각해본다.")
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        RoundedTextView(text : "왕~~밥이다!!!! 일단 밥에 집중한다")
                    }
                    Spacer().frame(width:20,height:20)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(4)
                    }) {
                        RoundedTextView(text : "바다는 예쁘고, 날씨도 좋고, 밥은 맛있고.. 힐링 그 잡채.. 자주오면 좋겠다!! ")
                    }
                }
            }
        }
    }
}
// 컨텐트뷰_프리뷰
struct Slide4View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    static var previews: some View {
        Slide4View(count: $count,value: $value)
    }
}
