import SwiftUI

struct ResultViewDANA: View {
    @Binding var pageStatus:PageStatus
    @Binding var scores:[Double]
    
    
    let imageNames = ["001","002","003","004","005","006"]
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
                
                //상단
                Group{
                    Image("logo")
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    
                    Text("시비없는 12팀을 통해 알아보는")
                        .foregroundColor(Color.gray)
                    
                    Text("나는 어떤 유형의 러너일까?")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.top, 0)
                }
                
                Group{
                    Image("DANA character")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    
                    Text("확신의 긍정킹,")
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Text(" DANA")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                
                Text("당신은 MC1에서 영혼 없는 리액션을 담당하\n셨군요! 당신은 항상 긍정적인 자세로 주변 사람들을 편안하게 만들어줍니다. 때로는 자\n칫 무거워질 수 있는 팀의 분위기를 환기해주\n고, 영혼없는 리액션으로 팀원들의 사기를 북\n돋아요! 톡톡 튀는 아이디어까지 있으니, 여\n러분의 팀에게 꼭 필요한 러너군요! 다른 사\n람의 의견을 잘 받아주며, 자신의 의견 또한 피력할 줄 아는 당신, MC1에서도 당신의 긍\n정 에너지를 발휘했기를 바랍니다!")
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
                //긍정력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("긍정력")
                        .font(.system(size: 17, weight: .semibold))
                    
                    HStack(spacing: 2) {
                        
                        HStack(spacing: -25) {
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                        }
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        HStack(spacing: -25) {
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                        }
                    }
                }
                
                //포용력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("포용력")
                        .font(.system(size: 17, weight: .semibold))
                    
                    HStack(spacing: 2) {
                        
                        HStack(spacing: -25) {
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                        }
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        HStack(spacing: -25) {
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                        }
                    }
                }
                
                //아이디어
                HStack{
                    Text("아이디어")
                        .font(.system(size: 17, weight: .semibold))
                    
                    HStack(spacing: 2) {
                        
                        HStack(spacing: -25) {
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                        }
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0xcccccc))
                        
                        HStack(spacing: -25) {
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                        }
                    }
                }
                
                //리액션
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("리액션")
                        .font(.system(size: 17, weight: .semibold))
                    
                    HStack(spacing: 2) {
                        
                        HStack(spacing: -25) {
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0x24E7B0))
                        }
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        Rectangle()
                            .frame(width: 45, height: 24)
                            .foregroundColor(Color(0x24E7B0))
                        
                        HStack(spacing: -25) {
                            Rectangle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                            Circle()
                                .frame(width: 45, height: 24)
                                .foregroundColor(Color(0xcccccc))
                        }
                    }
                }
                .padding(.bottom, 40)

                //하단
                Group{

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
                    .padding(.top, 30)
                    
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
struct ResultViewDANA_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULTDANA
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        ResultViewDANA(pageStatus: $pageStatus,scores: $scores)
    }
}
