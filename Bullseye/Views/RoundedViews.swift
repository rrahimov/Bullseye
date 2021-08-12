//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 08.08.21.
//

import SwiftUI

struct RoundedImgViewStroked: View {
    var systemName:String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 50.0, height: 50.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImgViewFilled: View {
    var systemName:String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 50.0, height: 50.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(-0.2)
            .font(.title3)
            .frame(width: 68, height: 56)
            .overlay(RoundedRectangle(cornerRadius: 21)
                        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImgViewStroked(systemName: "arrow.counterclockwise")
            RoundedImgViewFilled(systemName: "list.dash")
            RoundedRectTextView(text: "57")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
