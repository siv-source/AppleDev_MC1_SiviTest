import SwiftUI

struct Slide1View: View {
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
                    Text("MC1 첫날, 팀원들과 처음으로 모였다. 분위기는 정적... 당신은 어떻게 행동하겠는가?")
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
                        RoundedTextView(text : "어색한 건 싫어! 먼저 말을 건다.")
                        
                    }.buttonStyle(MyButtonStyle())
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        RoundedTextView(text : "일단 팀원들을 스캔하며 팀 분위기가 좋기를 빈다.")
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        RoundedTextView(text : "시간이 지나면 자연스럽게 친해질테니 그냥 있는다.")
                    }
                    Spacer().frame(width:20,height:20)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(4)
                    }) {
                        RoundedTextView(text : "새로운 사람, 말걸기 무서워! 가만히 있는다.")
                    }
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
            .padding(10)
            .foregroundColor(.black)
//            .background(Color.white)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 0)
            )
            .shadow(radius: 2)
    }
}

// 컨텐트뷰_프리뷰
struct Slide1View_Previews: PreviewProvider {
    @State static var count:Int  = 1
    @State static var value:Float = 0.24
    static var previews: some View {
        Slide1View(count: $count,value: $value)
    }
}


// 버튼 클릭 시 이벤트
struct MyButtonStyle: ButtonStyle {
    
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      
      .padding(6)
      .foregroundColor(.white)
      .background(configuration.isPressed ? Color(0x24E7B0) : Color.white)
      .cornerRadius(15.0)
  }

}
