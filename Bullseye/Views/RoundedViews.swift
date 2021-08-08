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
    }
}

struct RoundedImgViewFilled: View {
    var systemName:String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 50.0, height: 50.0)
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
        RoundedImgViewStroked(systemName: "arrow.counterclockwise")
            RoundedImgViewStroked(systemName: "list.dash")
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
