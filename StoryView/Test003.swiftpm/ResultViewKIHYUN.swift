import SwiftUI

struct ResultViewKIHYUN: View {
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
                    Image("KIHYUN character")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .padding(.top, -10)
                    
                    Text("러너들의 빳데리,")
                        .font(.system(size: 33, weight: .bold))
                        .padding(.top, -30)
                    
                    HStack{
                        Text(" KIHYUN")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                        Text("유형  ")
                            .font(.system(size: 33, weight: .bold))
                    }
                    .padding(.bottom, 40)
                }
                
                Text("당신은 MC1에서 깔끔 정리 러너를 담당하셨\n군요! 다른 팀원들이 뽑아낸 인사이트를 정리\n하고, 그 과정에서 새롭게 인사이트를 뽑아낼 줄 알아요! 팀원들이 당신을 신뢰하고 있다는\n게 느껴져요. 의견을 제시할때도 깊게 생각하\n고 말하는 신중한 스타일인 당신, 진지해보이\n지만 가끔씩 팀원들에게 보이는 허당미가 매\n력이에요!")
                    .font(.system(size: 20, weight: .regular))
                    .lineSpacing(6.0)
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                    .lineLimit(nil)
                
                //정리력
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("정리력")
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
                
                //신중함
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("신중함")
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
                
                //신뢰감
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("신뢰감")
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
                
                //허당미
                HStack{
                    Text(".")
                        .foregroundColor(Color.white)
                    
                    Text("허당미")
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
struct ResultViewKIHYUN_Previews: PreviewProvider {
    @State static var pageStatus = PageStatus.RESULTDANA
    @State static var scores : [Double] = [0,0,0,0,0,0]
    static var previews: some View {
        ResultViewKIHYUN(pageStatus: $pageStatus,scores: $scores)
    }
}


