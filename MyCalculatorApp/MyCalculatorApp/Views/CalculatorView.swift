//
//  CalculatorView.swift
//  MyCalculatorApp
//
//  Created by Юрій Багрій on 17.09.2025.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack(spacing : 16) {
            Spacer()
            CalculatorDisplayView()
            //                Spacer()
            KeypadView()
            
        }
        .background(Color.black)
    }
}

#Preview {
    CalculatorView()
}
