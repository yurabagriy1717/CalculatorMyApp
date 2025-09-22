//
//  CalculatorView.swift
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject private var viewModel = KeypadViewModel()
    
    var body: some View {
        VStack(spacing : 16) {
            Spacer()
            CalculatorDisplayView(viewModel: viewModel)
            KeypadView(viewModel: viewModel)

        }
        .background(Color.black)
    }
}

#Preview {
    CalculatorView()
}
