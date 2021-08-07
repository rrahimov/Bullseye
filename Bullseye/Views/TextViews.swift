//
//  TextViews.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 07.08.21.
//

import SwiftUI

struct InstructionText: View {
    var text = "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO"
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .foregroundColor(Color("TextColor"))
            .fontWeight(.black)
            .font(.largeTitle)
            .kerning(-1.0)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText()
    }
}
