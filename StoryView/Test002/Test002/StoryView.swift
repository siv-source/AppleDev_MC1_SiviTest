//
//  StoryView.swift
//  Test002
//
//  Created by Kihyun Roh on 2023/03/27.
//

import SwiftUI

struct StoryView: View {
    @Binding var count:Int
    @Binding var value:Float
    
    var body: some View {
        Spacer().frame(width: 40,height: 30)
        HStack{
            Spacer().frame(width: 20)
            VStack{
                //Text(String($count)+" / 8") // build error
                Text(String(describing:count)+" / 8")
                    .font(.system(size: 30))
                    .bold()
            }
            Spacer()
        }
        Spacer().frame(height:20)
        
        ProgressBar(value: $value).frame(height: 20)
        SlideView(count: $count,
                          value: $value)
        Spacer().frame(width: 40,height:120)
    }
}

// 프로그레스 바
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
