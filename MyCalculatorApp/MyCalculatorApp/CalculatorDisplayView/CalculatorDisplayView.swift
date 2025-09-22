//
//  CalculatorDisplayView.swift
//

import SwiftUI

struct CalculatorDisplayView: View {
    @ObservedObject var viewModel: KeypadViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.input)
                .font(.system(size: 56, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 60)
                .frame(height: 60)
        }
    }
}

#Preview {
    CalculatorDisplayView(viewModel: KeypadViewModel())
}

