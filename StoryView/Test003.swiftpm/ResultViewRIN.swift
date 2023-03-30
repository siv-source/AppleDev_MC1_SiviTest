import SwiftUI

struct ResultViewRIN: View {
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
                    
                    Text("시비없는 12팀으로 알아보는")
                        .foregroundColor(Color.gray)
                    
                    Text("나는 어떤 러너일까!?")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 30, weight: .bold))
                        .padding(.top, 0)
                }
                
                Group{
                    Image("RIN character")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    
                    Text("놀땐 놀고, 할땐 하자구!")
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Text(" RIN")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                
                Text("MC1에서 좋은 분위기의 촉마제 역할이었던 당신! 즐거운 장난으로 팀의 분위기를 풀어주\n기도 하고, 때로는 진지한 모습으로 회의에 참여하는 당신의 모습이 다른 러너들에게 좋\n은 영향을 주었네요. 팀에 필요한 것들을 누\n구보다 빠르게 파악하고, 팀의 진행도를 원활\n하게 올려주기도합니다.")
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
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
                
                //장난끼
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("장난끼")
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
                
                //논리력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("논리력")
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
                
                //진행력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("진행력")
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
struct ResultViewRIN_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULTDANA
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        ResultViewRIN(pageStatus: $pageStatus,scores: $scores)
    }
}

