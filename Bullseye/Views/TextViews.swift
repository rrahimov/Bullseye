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
            .frame(width: 35)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.semibold)
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .cornerRadius(12.0)
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(-0.2)
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(-0.2)
    }
}

struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.title)
            .fontWeight(.black)
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText()
            LabelText(text: "SCORE")
            BodyText(text: "You scored 25 points.\n🎉🎉🎉")
            ButtonText(text: "Start new round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
