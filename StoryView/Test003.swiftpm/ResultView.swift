import SwiftUI

struct ResultView: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    
    let imageNames = ["001","002","003","004","005","006"]
    let result = Result.results
    var body: some View {
        let maxIndex : Int = scores.firstIndex(where: { $0 == scores.max() })!
        ScrollView{
            VStack(alignment: .center){
                //상단
                VStack{
                    Image("logo")
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    
                    Text("시비없는 12팀으로 알아보는")
                        .foregroundColor(Color.gray)
                    
                    Text("나는 어떤 러너일까!?")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.top, 0)
                }
                
                Group{
                    Image(Result.results[maxIndex].image)
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    Text(Result.results[maxIndex].script1)
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Spacer().frame(width: 0)
                        Text(Result.results[maxIndex].script2)
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                Text(Result.results[maxIndex].describe)
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
                ForEach(Result.results[maxIndex].guageDatas, id:\.self){ guageData in
                    GuageBar (text: guageData.text, level: Colors.level[guageData.num])
                }
                
                
                //하단
                VStack{
                    Button(action: {
                        print(scores)
                        pageStatus = .RESULTALL
                        scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                    }) {
                        Text("시비없는 12팀의 다른 유형 보러가기")
                            .font(.system(size: 18, weight: .semibold))
                            .padding()
                            .padding(.horizontal, 7)
                            .foregroundColor(Color.black)
                    }
                    .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3))
                    .foregroundColor(Color(0x24E7B0))
                    .padding(.top, 80)
                    
                    Button(action: {
                        print(scores)
                        pageStatus = .MAIN
                        scores = [0.0,0.0,0.0,0.0,0.0,0.0]
                    }) {
                        Text("테스트 다시하기")
                            .font(.system(size: 18, weight: .bold))
                            .padding()
                            .padding(.horizontal, 80)
                            .foregroundColor(Color.white)
                    }
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(Color(0x24E7B0))
                    .padding(.top, 5)
                    .padding(.bottom, 40)
                }
            }
            
        }
    }
}

// 컨텐트뷰_프리뷰
struct ResultView_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULT
    @State static var scores : [Double] = [18,28,38,48,58,68]
    static var previews: some View {
        ResultView(pageStatus: $pageStatus,scores: $scores)
    }
}

// 게이지바 일원화
struct GuageBar: View {
    var text: String
    var level : Colors
    var body: some View{
        HStack{
            HStack{
                Spacer()
                Text(self.text)
                    .font(.system(size: 17, weight: .semibold))
                    .multilineTextAlignment(.trailing)
            }.frame(width:70)
            .padding(.leading, -15)
                
            HStack(spacing: 2) {
                HStack(spacing: -25) {
                    Circle()
                        .frame(width: 45, height: 24)
                        .foregroundColor(self.level.color1)
                    Rectangle()
                        .frame(width: 45, height: 24)
                        .foregroundColor(self.level.color1)
                }
                
                Rectangle()
                    .frame(width: 45, height: 24)
                    .foregroundColor(self.level.color2)
                
                Rectangle()
                    .frame(width: 45, height: 24)
                    .foregroundColor(self.level.color3)
                
                Rectangle()
                    .frame(width: 45, height: 24)
                    .foregroundColor(self.level.color4)
                
                HStack(spacing: -25) {
                    Rectangle()
                        .frame(width: 45, height: 24)
                        .foregroundColor(self.level.color5)
                    Circle()
                        .frame(width: 45, height: 24)
                        .foregroundColor(self.level.color5)
                }
            }
        }
    }
}
