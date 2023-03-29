import SwiftUI

struct ResultView: View {
    var body: some View {
        ScrollView{
            HStack {
                Spacer().frame(width:20).background(Color.blue)
                VStack{
                    Group{
                        Image("logo")
                            .frame(width: 100, height: 100)
                            .padding(.top, 30)
                        
                        Text("시비없는 12팀을 통해 알아보는")
                            .foregroundColor(Color.gray)
                            .lineSpacing(10)
                        
                        Text("나는 어떤 유형의 러너일까?")
                            .frame(width: 500, height: 10)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 30, weight: .bold))
                            .padding(3)
                    }
                    
                    Group{
                        Image("DANA character")
                            .padding(.top, 30)
                        
                        Text("확신의 긍정킹,")
                            .font(.system(size: 33, weight: .bold))
                        
                        HStack{
                            Text(" DANA")
                                .font(.system(size: 40, weight: .bold))
                            //24E7B0
                                .foregroundColor(Color.mint)
                            Text("유형  ")
                                .font(.system(size: 33, weight: .bold))
                        }
                    }
                    
                    Text("당신은 MC1에서 영혼 없는 리액션을 담당하셨군요! 당신\n은 항상 긍정적인 자세로 주변 사람들을 편안하게 만들어\n줍니다. 때로는 자칫 무거워질 수 있는 팀의 분위기를 환기 해주고, 영혼 없는 리액션으로 팀원들의 사기를 북돋아요! 톡톡 튀는 아이디어까지, 여러분의 팀에게 꼭 필요한 러너\n군요! 다른 사람의 의견을 잘 받아주며, 자신의 의견 또한 피력할 줄 아는 당신, MC1에서도 당신의 긍정 에너지를 발휘했기를 바랍니다!")
                        .frame(width: 390, height: 220)   
                        .lineSpacing(6.0)
                        .padding(.bottom, 30)
                    
                    HStack{
                        Spacer().frame(width:10)
                        Text("긍정력   ")
                        Spacer().frame(width:10)
                        
                        Group{
                            Group{
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 40, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: false
                                    )
                                }    .fill(Color.mint)
                                Spacer().frame(width:0)
                                Rectangle()
                                    .fill(Color.mint)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:2)
                            }
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Group{
                                Rectangle()
                                    .fill(Color.mint)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:0)
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 0, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: true
                                    )
                                }    .fill(Color.mint)
                            }
                            
                        }  
                    }
                    
                    HStack{
                        Spacer().frame(width:10)
                        Text("포용력   ")
                        Spacer().frame(width:10)
                        
                        Group{
                            Group{
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 40, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: false
                                    )
                                }    .fill(Color.mint)
                                Spacer().frame(width:0)
                                Rectangle()
                                    .fill(Color.mint)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:2)
                            }
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Group{
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:0)
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 0, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: true
                                    )
                                }    .fill(Color.gray)
                            }
                            
                        }  
                    }
                    
                    HStack{
                        Spacer().frame(width:10)
                        Text("아이디어")
                        Spacer().frame(width:10)
                        
                        Group{
                            Group{
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 40, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: false
                                    )
                                }    .fill(Color.mint)
                                Spacer().frame(width:0)
                                Rectangle()
                                    .fill(Color.mint)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:2)
                            }
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Group{
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:0)
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 0, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: true
                                    )
                                }    .fill(Color.gray)
                            }
                            
                        }  
                    }
                    
                    HStack{
                        Spacer().frame(width:10)
                        Text("리액션   ")
                        Spacer().frame(width:10)
                        
                        Group{
                            Group{
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 40, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: false
                                    )
                                }    .fill(Color.mint)
                                Spacer().frame(width:0)
                                Rectangle()
                                    .fill(Color.mint)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:2)
                            }
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Rectangle()
                                .fill(Color.mint)
                                .frame(width: 60, height: 26)
                            Spacer().frame(width:2)
                            
                            Group{
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 47, height: 26)
                                Spacer().frame(width:0)
                                Path { path in
                                    path.addArc(
                                        center: CGPoint(x: 0, y: 13),
                                        radius: 13,
                                        startAngle: Angle(degrees: 90),
                                        endAngle: Angle(degrees: -90),
                                        clockwise: true
                                    )
                                }    .fill(Color.gray)
                            }
                            
                        }  
                    }
                    
                    Group{
                        Text("사진 저장하기")
                            .underline()  
                            .foregroundColor(Color.mint)
                            .padding(.top, 100)
                        
                        Button(action: {}) { 
                            Text("시비없는 12팀의 유형 보러가기") 
                                .font(.system(size: 18, weight: .bold))
                                .padding()
                                .padding(.horizontal, 75)
                                .foregroundColor(Color.black)
                        } 
                        .background(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 3)) 
                        .foregroundColor(Color.mint)
                        .padding(.top, 30)
                        
                        Button(action: {}) {
                            Text("테스트 다시하기")
                                .font(.system(size: 18, weight: .bold))
                                .padding()
                                .padding(.horizontal, 130)
                                .foregroundColor(Color.white)
                        }
                        .background(RoundedRectangle(cornerRadius: 15))
                        .foregroundColor(Color.mint)
                        .padding(.top, 10)
                        .padding(.bottom, 50)
                        }
                    }
                }
            }
        }
    }
    
    // 컨텐트뷰_프리뷰
    struct ResultView_Previews: PreviewProvider {
        static var previews: some View {
            ResultView()
        }
    }
