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
}

extension Colors{
    static let template: [Colors] =
    [Colors(color1: Color.black,
            color2: Color.white),
     Colors(color1: Color.white,
            color2: Color(0x24E7B0))]
}

struct AnswerButtonStyle : ButtonStyle{
    var text: String
    var foreBackColors: [Colors]
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let displayText = configuration.isPressed ? foreBackColors[1] : foreBackColors[0]
        return RoundedTextView(text: self.text, colors: displayText)
    }
}


