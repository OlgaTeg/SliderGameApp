//
//  SliderView.swift
//  SliderGameApp
//
//  Created by Olga Tegza on 20.01.2023.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    
    let alpha: Int
    let color: UIColor
    
    var body: some View {
        DecimalSlider(value: $value, alpha: alpha, color: color)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(50), alpha: 100, color: .white)
    }
}
