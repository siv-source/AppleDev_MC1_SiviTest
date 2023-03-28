import SwiftUI

struct Slide1View: View {
    @Binding var count:Int
    @Binding var value:Float
    var content = ContentString.storyData
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
                    Text(content[0].question)
                        .font(.system(size:400))
                        .minimumScaleFactor(0.01)
                    Spacer().frame(width:20)
                }.frame(height:120)
                Spacer().frame(width:20,height:60)
                // 갯수가 많아지면 렉걸린댄다... (그룹화 중요하지.. 암)
                Group{
                    VStack{                        
                        Button(action: {
                            // What to perform
                            count += 1
                            value = Float(count)/8
                            print(1)
                            print(type(of:content[0].question))
                            print(type(of:content))
                            for i in [1,2,3,4]{
                                print(i)
                            }
                        }) {
                            RoundedTextView(text:"즐")
                        }
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(2)
                    }) {
                        //                        RoundedTextView(text : content[0].answers[1])
                    }
                    
                    Spacer().frame(width:20,height:20)
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(3)
                    }) {
                        //                        RoundedTextView(text : content[0].answers[2])
                    }
                    Spacer().frame(width:20,height:20)
                    
                    Button(action: {
                        // What to perform
                        count += 1
                        value = Float(count)/8
                        print(4)
                    }) {
                        //                        RoundedTextView(text : content[0].answers[3])
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
    @Binding var count: Int
    @Binding var value: Float
    var content: [ContentString]
    var answerIndex:Int
    var body: some View {
        VStack{
            Spacer().frame(width:20,height:60)
            
            Button(action: {
                // What to perform
                count += 1
                value = Float(count)/8
                print(1)
                print(type(of:content[0].question))
            }) {
                RoundedTextView(text: "즐")
            }
        }
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
