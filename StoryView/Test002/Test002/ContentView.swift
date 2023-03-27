import SwiftUI
struct ContentView: View {
    @State var currentPage = 1
    @State var progress = 0.0
    @State var SomeValue = 1
    @State private var drawingWidth = false
    @State var progressValue: Float = 0.0
    
    var body: some View {
        
        // 버티컬리하게 쪼갠다.
        VStack {
            Spacer().frame(width: 40,height: 30)
            HStack{
                Spacer().frame(width: 20)
                VStack{
                    Text(String(SomeValue) + " / 8")
                        .font(.system(size: 30))
                        .bold()
                }
                Spacer()
            }
            Spacer().frame(height:20)
            

            ProgressBar(value: $progressValue).frame(height: 20)
            
            if currentPage == 0 {
                ContentSlide0View()
            } else if currentPage == 1 {
                ContentSlide0View()
            } else if currentPage == 2 {
                ContentSlide0View()
            }
            Spacer().frame(width: 40,height: 120)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
            ZStack(alignment: .leading) {
                Rectangle().frame(width: 340 , height: 40)
                    .opacity(0.2) //불투명도
                    .foregroundColor(Color.gray)
                
                Rectangle().frame(width: min(CGFloat(self.value)*340, 340), height: 40)
                    .foregroundColor(Color.orange)
            }.cornerRadius(45.0)
    }
}
