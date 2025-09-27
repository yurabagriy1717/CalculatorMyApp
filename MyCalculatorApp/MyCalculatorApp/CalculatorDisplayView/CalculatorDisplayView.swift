//
//  CalculatorDisplayView.swift
//

import SwiftUI

struct CalculatorDisplayView: View {
    @ObservedObject var viewModel: KeypadViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.expression)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 60)
                .frame(height: 60)
            
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

