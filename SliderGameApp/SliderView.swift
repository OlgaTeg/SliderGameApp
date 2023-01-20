//
//  SliderView.swift
//  SliderGameApp
//
//  Created by Olga Tegza on 20.01.2023.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    
    let randomValue: Int
    let alpha: Int
    let color: UIColor
    
    var body: some View {
        DecimalSlider(value: $value, alpha: alpha, color: color)
    }
}

extension SliderView {
    private func check(value: Double) {
        self.value = Double(value)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(50), randomValue: 60, alpha: 100, color: .white)
    }
}
