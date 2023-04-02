//
//  Colors.swift
//  Test003
//
//  Created by GYURI PARK on 2023/03/30.
//

import SwiftUI

struct Colors {
    var color1 : Color
    var color2 : Color
    var color3 : Color = Color.white
    var color4 : Color = Color.white
    var color5 : Color = Color.white
}

extension Colors{
    static let template: [Colors] =
    [Colors(color1: Color.black,
            color2: Color.white),
     Colors(color1: Color.white,
            color2: Color(0x24E7B0))]
    
    static let level: [Colors] =
    [Colors(color1: Color(0xcccccc) ,color2:Color(0xcccccc),color3:Color(0xcccccc),color4:Color(0xcccccc),color5:Color(0xcccccc)),
     Colors(color1: Color(0x24E7B0) ,color2:Color(0xcccccc),color3:Color(0xcccccc),color4:Color(0xcccccc),color5:Color(0xcccccc)),
     Colors(color1: Color(0x24E7B0) ,color2:Color(0x24E7B0),color3:Color(0xcccccc),color4:Color(0xcccccc),color5:Color(0xcccccc)),
     Colors(color1: Color(0x24E7B0) ,color2:Color(0x24E7B0),color3:Color(0x24E7B0),color4:Color(0xcccccc),color5:Color(0xcccccc)),
     Colors(color1: Color(0x24E7B0) ,color2:Color(0x24E7B0),color3:Color(0x24E7B0),color4:Color(0x24E7B0),color5:Color(0xcccccc)),
     Colors(color1: Color(0x24E7B0) ,color2:Color(0x24E7B0),color3:Color(0x24E7B0),color4:Color(0x24E7B0),color5:Color(0x24E7B0))]
    
}

extension Color {
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex>>16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double((hex >> 0) & 0xFF) / 255,
            opacity: alpha
        )
    }
}




