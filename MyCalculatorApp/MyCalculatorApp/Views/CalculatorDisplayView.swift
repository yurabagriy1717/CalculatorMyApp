//
//  CalculatorDisplayView.swift
//  MyCalculatorApp
//
//  Created by Юрій Багрій on 17.09.2025.
//

import SwiftUI

struct CalculatorDisplayView: View {
    
    var text: String = "0"
    
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 56, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 60)
                .frame(height: 60)
        }
    }
}

#Preview {
    CalculatorDisplayView()
}
