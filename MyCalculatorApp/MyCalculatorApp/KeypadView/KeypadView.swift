//
//  KeypadView.swift
//

import SwiftUI

struct KeypadView: View {
    @ObservedObject var viewModel: KeypadViewModel
    
    var body: some View {
        VStack {
            
            if let error =  viewModel.error {
                Text(error).foregroundColor(Color.red)
            }
            
            else {
                Text(viewModel.input)
            }
            
            
            HStack {
                CalcButtonNumView(title: "AC", action: { viewModel.clear() })
                CalcButtonNumView(title: "+/-", action: { print("натиснуто +/-") })
                CalcButtonNumView(title: "%", action: { print("натиснуто %") })
                CalcButtonOperation(title: "/", action: { viewModel.setOperation("/") })
            }
            
            HStack {
                CalcButtonNumView(title: "7", action: { viewModel.pressKey("7") })
                CalcButtonNumView(title: "8", action: { viewModel.pressKey("8") })
                CalcButtonNumView(title: "9", action: { viewModel.pressKey("9") })
                CalcButtonOperation(title: "*", action: { viewModel.setOperation("*") })
            }
            
            HStack {
                CalcButtonNumView(title: "4", action: { viewModel.pressKey("4") })
                CalcButtonNumView(title: "5", action: { viewModel.pressKey("5") })
                CalcButtonNumView(title: "6", action: { viewModel.pressKey("6") })
                CalcButtonOperation(title: "-", action: { viewModel.setOperation("-") })
            }
            
            HStack {
                CalcButtonNumView(title: "1", action: { viewModel.pressKey("1") })
                CalcButtonNumView(title: "2", action: { viewModel.pressKey("2") })
                CalcButtonNumView(title: "3", action: { viewModel.pressKey("3") })
                CalcButtonOperation(title: "+", action: { viewModel.setOperation("+") })
            }
            
            HStack {
                CalcButtonNumView(title: "cacl", action: { print("натиснуто 1") })
                CalcButtonNumView(title: "0", action: { viewModel.pressKey("0") })
                CalcButtonNumView(title: ".", action: { viewModel.decimalPoint() })
                CalcButtonOperation(title: "=", action: { viewModel.calculate() })
            }
        }
    }
}

#Preview {
    KeypadView(viewModel: KeypadViewModel())
}
