import SwiftUI

struct ResultViewTAMRA: View {
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
                    Image("TAMRA character")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    
                    Text("도와줘, 탐라에몽!")
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Text(" TAMRA")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                
                Text("당신은 언제나 유창한 말로 회의를 이끌어나\n갈 수 있는 리더시군요! MC1에서도 멋진 리\n더쉽을 발휘하고, 뛰어난 친화력으로 팀의 단\n합력을 올려줘요. 도라에몽처럼 쉬지 않고 뽑\n아내는 아이디어까지! 순발력까지 갖춘 팀의 아이디어 뱅크예요. 못하는 것이 없는 당신, 모든 러너들이 탐낼만한 인재예요!")
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
                //리더쉽
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("리더쉽")
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
                
                //친화력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("친화력")
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
                
                //순발력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("순발력")
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
struct ResultViewTAMRA_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULTTAMRA
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        ResultViewTAMRA(pageStatus: $pageStatus,scores: $scores)
    }
}

