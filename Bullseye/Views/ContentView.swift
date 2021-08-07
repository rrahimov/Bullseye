//
//  ContentView.swift
//  Bullseye
//
//  Created by Ruhullah Rahimov on 18.07.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .foregroundColor(Color("TextColor"))
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .kerning(-1.0)
                HStack {
                    Text("1")
                        .foregroundColor(Color("TextColor"))
                        .bold()
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    //$ makes it binding to the state, which updates it automatically
                    Text("100")
                        .foregroundColor(Color("TextColor"))
                        .bold()
                }
                .padding()
                Button(action: {
                    print("Hello broseph")
                    alertIsVisible = true
                }) {
                    Text("Hit me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .foregroundColor(.white)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .cornerRadius(21.0)
                
                .alert(isPresented: $alertIsVisible, content: {
                    let roundedValue = Int(sliderValue.rounded())
                    return Alert(title: Text("Hallu"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Coolest thing")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
