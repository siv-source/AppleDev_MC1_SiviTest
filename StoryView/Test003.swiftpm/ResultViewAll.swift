import SwiftUI

struct ResultViewAll: View {
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
                        .padding(.bottom, 25)
                }.frame(width: 1000)
                
                //DANA, DORIS
                HStack (spacing: 25) {
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [0.0,0.0,0.0,0.0,6.0,0.0]
                            pageStatus = .RESULT
                        }) {
                            Image("DANA character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("DANA")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
               
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [0.0,0.0,0.0,0.0,0.0,6.0]
                            pageStatus = .RESULT
                        }) {
                            Image("DORIS character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("DORIS")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
                }  .padding(.bottom, -2)
                
                //KIHYUN, PETER
                HStack (spacing: 25) {
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [0.0,6.0,0.0,0.0,0.0,0.0]
                            pageStatus = .RESULT
                        }) {
                            Image("KIHYUN character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("KIHYUN")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
               
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [6.0,0.0,0.0,0.0,0.0,0.0]
                            pageStatus = .RESULT
                        }) {
                            Image("PETER character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("PETER")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
                }  .padding(.bottom, -2)
                
                //RIN, TAMRA
                HStack (spacing: 25) {
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [0.0,0.0,0.0,6.0,0.0,0.0]
                            pageStatus = .RESULT
                        }) {
                            Image("RIN character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("RIN")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
               
                    VStack{
                        Button(action: {
                            print(scores)
                            scores = [0.0,0.0,6.0,0.0,0.0,0.0]
                            pageStatus = .RESULT
                        }) {
                            Image("TAMRA character")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .padding(7)
                        }
                        .background(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
                        .foregroundColor(Color(0x24E7B0))
                        .padding(.top, 30)
                    
                        Text("TAMRA")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(0x24E7B0))
                    }
                }
                
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
                .padding(.top, 50)
                .padding(.bottom, 40)
                
            }
        }
    }
    
    
    struct ResultViewAll_Previews: PreviewProvider {
        @State static var pageStatus = PageStatus.RESULTALL
        @State static var scores : [Double] = [0,0,0,0,0,0]
        static var previews: some View {
            ResultViewAll(pageStatus: $pageStatus,scores: $scores)
        }
    }
}
