import SwiftUI

struct ResultViewDORIS: View {
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
                    Image("DORIS character")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    
                    Text("러너들의 빳데리,")
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Text(" DORIS")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                
                Text("MC1에서 남들이 보지 못한 관점으로 문제를 해결하려고 하는 당신, 자신만의 인사이트를 톡톡히 보여주고 있네요! 팀이 간과하고 넘어\n갈 부분들을 집어주어 더 나은 솔루션을 위해 힘쓰고 있군요. 재치있는 입담과 유쾌한 웃음\n으로 팀의 분위기를 올려주는 센스까지! 팀의 에너자이저로서, 팀원에게 편안함을 가져다\n주는 러너네요!")
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
                //에너지
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("에너지")
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
                
                //편안함
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("편안함")
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
                
                //쾌활함
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("쾌활함")
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
                
                //문제해결
                HStack{
                    
                    Text("문제해결")
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

                    Button(action: {}) {
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
struct ResultViewDORIS_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULTDANA
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        ResultViewDORIS(pageStatus: $pageStatus,scores: $scores)
    }
}

