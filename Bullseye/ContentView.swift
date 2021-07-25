//
//  ContentView.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 18.07.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var knockIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .fontWeight(.black)
                .font(.largeTitle)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(Double(50)), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello broseph")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Hallu"), message: Text("First pop-up"), dismissButton: .default(Text("Coolest thing")))
            })
            Button(action: {
                    self.knockIsVisible = true
            }) {
                Text("Knock, knock")
            }
            .alert(isPresented: $knockIsVisible, content: {
                Alert(title: Text("Kimdü?"), message: Text("Eyib olsun."), dismissButton: .default(Text("Kes səsüvi")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
