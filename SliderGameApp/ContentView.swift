//
//  ContentView.swift
//  SliderGameApp
//
//  Created by Olga Tegza on 20.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue = 50.0
    @State private var targetValue = Int.random(in: 1...100)
    @State private var showAlert = false
    
    var body: some View {
        VStack (spacing: 20){
            Spacer()
            
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")
            
            SliderView(
                value: $currentValue,
                alpha: computeScore(),
                color: .red
            )
            
            Button("Проверь меня!") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Your score"),
                      message: Text("\(computeScore())"))
            }
            
            Button("Начать заново") {
                withAnimation {
                    currentValue = 50.0
                    targetValue = Int.random(in: 1...100)
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
